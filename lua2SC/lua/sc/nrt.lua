local NRT = {}
function NRT:open(filepath)
	local file,err = io.open(filepath,"wb")
	self.file = file
	if not self.file then error(err) end
	self.filepath = filepath
	
end
function NRT:sendBundle(msg,time)
	assert(self.file)
	assert(time>=0)
	if not self.closed then
		local kSecondsToOSCunits = 4294967296
		local timestamp = time*kSecondsToOSCunits 
		local dgram = toOSC{timestamp,msg}
		--prerror(time,#dgram,str2int(int2str(#dgram,4,false)))
		self.file:write(int2str(#dgram,4,false))
		self.file:write(dgram)
	else
		prerror("nrt closed:",prOSC(msg))
	end
end
function NRT:sendMultiBundle(time,msg)
	assert(self.file)
	assert(time>=0)
	if not self.closed then
		local kSecondsToOSCunits = 4294967296
		local timestamp = time*kSecondsToOSCunits 
		table.insert(msg,1,timestamp)
		local dgram = toOSC(msg)
		--prerror(time,#dgram,str2int(int2str(#dgram,4,false)))
		self.file:write(int2str(#dgram,4,false))
		self.file:write(dgram)
	else
		prerror("nrt closed:",prOSC(msg))
	end
end
local osctable = {}
function NRT:sendBundleTable(msg,time)
	assert(time)
	table.insert(osctable,{time,msg})
end
function NRT:sendMultiBundleTable(time,msg)
	assert(time)
	table.insert(msg,1,time)
	table.insert(osctable,msg)
end
function NRT:SaveTable(file)
	local fich,err=io.open(file,"wb")
	if not fich then error(err) end
	fich:write("local ")
	print"serialize"
	local str = serializeTable("osctable",osctable)
	print"serialize fich"
	fich:write(str)
	fich:write("return osctable ")
	fich:close()
end
function NRT:LoadTable(file)
	local fich,err=io.open(file,"r")
	if not fich then error(err) end
	local str=fich:read("*a")
	fich:close()
	return assert(loadstring(str))()
end
function NRT:close()
	self.file:close()
	self.closed = true
end
function NRT:Gen(endppq,test)
	NRT.test = test
	local function pathnoext(P)
		return P:match("([^%.]+)")
	end
	if not test then NRT:open(pathnoext(scriptname)..".osc") end
	if test then
		NRT.sendBundle = NRT.sendBundleTable
		NRT.sendMultiBundle = NRT.sendMultiBundleTable
	end
	theMetro:play(nil,0,0,25)
	local lastt = 0
    sendBundle = function(msg,ti)
		ti = ti or lastt
		lastt = ti
		local oscstr = prOSC(msg):sub(1,255)
		prerror(ti,oscstr)
		NRT:sendBundle(msg,ti)
	end
	sendMultiBundle = function(ti,msg)
		ti = ti or lastt
		lastt = ti
		local oscstr = prOSC(msg):sub(1,255)
		prerror(ti,oscstr)
		NRT:sendMultiBundle(ti,msg)
	end
	sendBlocked = function(msg)
		--print(lastt,prOSC(msg))
		local oscstr = prOSC(msg):sub(1,255)
		prerror(lastt,oscstr)
		--if msg[1]~="/d_recv" then
		NRT:sendBundle(msg,lastt)
		--end
		return {"/done",{}}
	end
    table.insert(initCbCallbacks,function()
		print"NRT work"
		theMetro:play(nil,0,0,25)
		theMetro.oldtimestamp = 0 -- -theMetro.period
		while theMetro.ppqPos < endppq do
-- cancelstep already does the work
--			if cancel_test() then 
--				print("NRT:required to cancel\n")
--				return true
--			end
			theMetro.timestamp = theMetro.oldtimestamp + theMetro.period
			theMetro.oldppqPos = theMetro.ppqPos
			theMetro.ppqPos = theMetro.ppqPos + theMetro.frame
			--print("theMetro",theMetro.oldppqPos,theMetro.ppqPos)
			_onFrameCb()
			theMetro.oldtimestamp = theMetro.timestamp
		end
		if not NRT.test then
			print("sending /quit on",theMetro:ppq2time(endppq),endppq)
			sendBundle({"/quit",{}},theMetro:ppq2time(endppq))
			NRT:close()
		else
			print"saving osc table"
			NRT:SaveTable(pathnoext(scriptname)..".osc")
			print"osc table saved"
		end
---[=[
	if not test then
		-- call sc NRT
		local is_windows = package.config:sub(1,1) == '\\'
		local sep = is_windows and '\\' or '/'
		local scpath = (_run_options.SCpath):match("(.+"..sep..")([^"..sep.."]+)")
		local plugpath = [["]]..scpath..[[plugins"]]
		for i,v in ipairs(_run_options.SC_PLUGIN_PATH) do
			if(v=="default") then
			else	
				plugpath = plugpath..[[;"]]..v..[["]]
			end
		end
		local cmd = string.format("\"\"%s\" -N \"%s\" _ \"%s\" 44100 wav float -U %s -o 2 -i 2 -V 2 -m 65536 2>&1\"",_run_options.SCpath, NRT.filepath, pathnoext(scriptname)..".wav",plugpath)
		print(cmd)
		--print(os.execute(cmd))
		local exe,err = io.popen(cmd)
		if not exe then
			print("Could not popen. Error: ",err)
			return false
		else
			exe:setvbuf("no")
		end
		repeat
--			if cancel_test() then
--				print("NRT:required to cancel\n")
--				return true
--			end
			--print(stdout:read("*all") or stderr:read("*all") or "nil")
			exe:flush()
			--io.write("reading line bootsc\n")
			local line = exe:read("*l")
			if line then
				--io.write(line .."\n")
				print(line)
			else
				--io.write("server finished\n")
				print("nrt server finished")
				return true
			end
		until false
	end
	scriptlinda:send("script_exit",1)
--]=]
    end)
end
return NRT