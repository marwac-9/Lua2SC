function linearmap(s,e,ds,de,v)
	return ((de-ds)*(v-s)/(e-s)) + ds
end
function amp2db(amp)
	return 20*math.log10(amp)
end
function db2amp(db)
	return 10^(db/20)
end
--values must be unique
function swapkeyvalue(t)
	local res={}
	for k,v in pairs(t) do
		res[v]=k
	end
	return res
end
function debuglocals(prtables)
	local prtables = prtables or false
		print"\n"
		for level = 2, math.huge do
				local info = debug.getinfo(level, "Sln")
				if not info then break end
				if info.what == "C" then -- is a C function?
					print(level, "C function")
				else -- a Lua function
					print(string.format("\nfunction %s[%s]:%d",tostring(info.name), info.short_src,info.currentline))
				end
				local a = 1
				while true do
					local name, value = debug.getlocal(level, a)
					if not name then break end
					print("local variable:",name, value)
					if type(value)=="table" and prtables then dumpObj(value) end
					a = a + 1
				end
			end
			print("end debug print")
	end
--returns items ordered by key
function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do a[#a + 1] = n end
	table.sort(a, f)
	local i = 0 -- iterator variable
	return function () -- iterator function
		i = i + 1
		return a[i], t[a[i]]
	end
end
--values must be unique
function pairsByValues(t, f)
	local a = {}
	local b = {}
	for k,v in pairs(t) do 
		assert(a[v]==nil)
		a[v] = k ; 
		b[#b + 1] = v 
	end
	table.sort(b, f)
	local i = 0 -- iterator variable
	return function () -- iterator function
		i = i + 1
		return a[b[i]],b[i] 
	end
end
function EmptyTable(t)
	for k,v in pairs(t) do
		t[k] = nil
	end
end
function mergeTable(a,b)
	for k,v in pairs(b) do
			a[k]=v
	end
	return a
end
--swaps row and files 2d
function flop(t)
	local res={}
	local files=#t
	local rows=#t[1]
	for i=1,rows  do
		res[i]={}
		for j=1,files do
			res[i][j]=t[j][i]
		end
	end
	return res
end
function flatten(t,lev)
	lev = lev or 1
	if type(t)~="table" then return t end
	if lev < 1 then return t end
	lev = lev - 1
	local res = {}
	for i,v in ipairs(t) do
		--res[#res+1]=flatten(v,lev)
		res=concatTables(res,flatten(v,lev))
	end
	return res
end
--returns a table n elements from n evals of func (function or value)
function TableFill(n,func)
	local res={}
	for i=1,n do
		if type(func)=="function" then
			res[i]=func(i)
		else
			res[i]=func
		end
	end
	return res
end
function isSimpleTable(t)
	return (type(t)=="table" and getmetatable(t)==nil)
end
--applies f to each element of t
function funcTable(t,f,...)
	if not isSimpleTable(t) then return f(t) end
	local res={}
	for i,v in ipairs(t) do
			res[i]= f(v,i,...)
	end 
	return res
end
function functabla(t,f)
	if not isSimpleTable(t) then return f(t) end
	local res={}
	for i,v in ipairs(t) do
			res[i]= f(v)
	end 
	return res
end
function seriesFill(n,init,step)
	init = init or 1; step = step or 1
	return TableFill(n,function(i) return init +(i-1)*step end) 
end
function len(t)
	--assert(t)
	if type(t)=="table" then return #t else return 1 end
end
function WrapAt(t,i)
	if type(t)=="table" then
		i=i%#t
		i= (i~=0) and i or #t
		return t[i]
	else
		return t
	end
end
function WrapAtSimple(t,i)
	if isSimpleTable(t) then
		i=i%#t
		i= (i~=0) and i or #t
		return t[i]
	else
		return t
	end
end
function mulTables(a,b)
	local res={}
	local maxlen=math.max(len(a),len(b))
	for i=1,maxlen do
		res[i]=WrapAt(a,i)*WrapAt(b,i)
	end
	return res
end
function divTables(a,b)
	local res={}
	local maxlen=math.max(len(a),len(b))
	for i=1,maxlen do
		res[i]=WrapAt(a,i)/WrapAt(b,i)
	end
	return res
end
function powTables(a,b)
	local res={}
	local maxlen=math.max(len(a),len(b))
	for i=1,maxlen do
		res[i]=WrapAt(a,i)^WrapAt(b,i)
	end
	return res
end
function addTables(a,b)
	local res={}
	local maxlen=math.max(len(a),len(b))
	for i=1,maxlen do
		res[i]=WrapAt(a,i)+WrapAt(b,i)
	end
	return res
end
function deepcopy(object)
    local lookup_table = {}
    local function _copy(object)
		--assert(object~=REST)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end
--only valuess are deepcopied not keys
function deepcopy_values(object)
    local lookup_table = {}
    local function _copy(object)
		--assert(object~=REST)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[index] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end
---[[
--TODO delete not recursive working use deepcopy
function copyObj(a)
	assert(a~=REST)
	local res ={}
	for k,v in pairs(a) do
		if type(v) == "table" then
			res[k] = copyObj(v)
		else
			res[k]=v
		end
	end
	setmetatable(res,getmetatable(a))
	return res
end
function copyTable(a)
	assert(a~=REST)
	local res ={}
	for k,v in pairs(a) do
		if type(v) == "table" then
			res[k] = copyTable(v)
		else
			res[k]=v
		end
	end
	return res
end
function copyiTable(a)
	--assert(a~=REST)
	local res ={}
	for k,v in ipairs(a) do
		if type(v) == "table" then
			res[k] = copyiTable(v)
		else
			res[k]=v
		end
	end
	return res
end
--]]
--accepts several tables or items
function concatTables(...)
	local res={}
	for i=1, select('#', ...) do
		local t = select(i, ...)
		if type(t)=="table" then
			assert(t~=REST)
			for _,v in ipairs(t) do
				table.insert(res,v)
			end
		else
			table.insert(res,t)
		end
	end
	return res
end
function concat2Tables(a,b)
	assert(b~=REST)
	for i,v in ipairs(b) do
		table.insert(a,v)
	end
	return a
end
-- all items not just numbered sequential
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end
-- function basicToStr(a)
	-- return tostring(a)
-- end
function prOSC(t)
	local strT = {}
	local function _prOSC(t)
		if type(t)=="table" then
			strT[#strT+1]="["
			for i=1,#t-1 do
				_prOSC(t[i])
				strT[#strT+1]=","
			end
			_prOSC(t[#t])
			strT[#strT+1]="]"
		else
			strT[#strT+1]=tostring(t)
		end
	end
	_prOSC(t)
	return table.concat(strT)
end
-- not good for cycles
function tb2st(t)
	local function _tb2st(t)
		if type(t)=="table" then
			local str2="["
			local comma = false
			for k,v in pairs(t) do
				if comma then str2=str2.."," else comma = true end
				str2=str2..tostring(k)..":".._tb2st(v)
			end
			str2=str2.."]"
			return str2
		else
			return tostring(t)
		end
	end
	return(_tb2st(t))
end
function tb2stSerialize(t)
	local function _tb2st(t)
		if type(t)=="table" then
			local str2="{"
			for k,v in pairs(t) do
				if type(v)=="number" then
					str2=str2.."["..tostring(k).."]="..string.format("%0.17g",v)..","
				else
					str2=str2.."["..tostring(k).."]=".._tb2st(v)..","
				end
			end
			str2=str2.."}"
			return str2
		else
			return tostring(t)
		end
	end
	return(_tb2st(t))
end
function prtable(...)
	local function ToStr(t)
		local strTG = {}
		local basicToStr=tostring
		if type(t) ~="table" then  return basicToStr(t) end
		local recG = 0
		local nameG="SELF"..recG
		local ancest ={}
		local function _ToStr(t,strT,rec,name)
			if ancest[t] then
				strT[#strT + 1]=ancest[t]
				return
			end
			rec = rec + 1
			ancest[t]=name
			strT[#strT + 1]='{'
			local count=0
			-------------
			if t.name then strT[#strT + 1]=string.rep("\t",rec).."name:"..tostring(t.name) end
			----------------
			for k,v in pairs(t) do
				count=count+1
				strT[#strT + 1]="\n"
				local kstr
				if type(k) == "table" then
					local name2=string.format("%s.KEY%d",name,count)
					strT[#strT + 1]=string.rep("\t",rec).."["
					local strTK = {}
					_ToStr(k,strTK,rec,name2)
					kstr=table.concat(strTK)
					strT[#strT + 1]=kstr.."]="
				else
					kstr = basicToStr(k)
					strT[#strT + 1]=string.rep("\t",rec).."["..kstr.."]="
				end
				
				if type(v) == "table" then
						local name2=string.format("%s[%s]",name,kstr)
						_ToStr(v,strT,rec,name2)
				else
					strT[#strT + 1]=basicToStr(v)
				end
			end
			strT[#strT + 1]='}'
			rec = rec - 1
			return
		end
		_ToStr(t,strTG,recG,nameG)
		return table.concat(strTG)
	end
	for i=1, select('#', ...) do
		local t = select(i, ...)
		print(ToStr(t))
		print("\n")
	end
end

function dumpObj(o)
	local function ToStr(t)
		local strTG = {}
		local basicToStr=tostring
		if type(t) ~="table" then  return basicToStr(t) end
		local recG = -1
		local nameG="SELF"
		local ancest ={}
		local function _ToStr(t,strT,rec,name)
			if ancest[t] then
				strT[#strT + 1]=ancest[t]
				return
			end
			rec = rec + 1
			ancest[t]=name
			strT[#strT + 1]='{'
			local count=0
			for k,v in pairs(t) do
				count=count+1
				strT[#strT + 1]="\n"
				local kstr
				if type(k) == "table" then
					local name2=string.format("%s.KEY%d",name,count)
					strT[#strT + 1]=string.rep("\t",rec).."["
					local strTK = {}
					_ToStr(k,strTK,rec,name2)
					kstr=table.concat(strTK)
					strT[#strT + 1]=kstr.."]:"
				else
					kstr = basicToStr(k)
					strT[#strT + 1]=string.rep("\t",rec).."["..kstr.."]:"
				end
				
				if type(v) == "table" then
						local name2=string.format("%s[%s]",name,kstr)
						_ToStr(v,strT,rec,name2)
				else
					strT[#strT + 1]=basicToStr(v)
				end
			end
			strT[#strT + 1]='}'
			local met = getmetatable(t)
			if met then
				local name2=string.format("%s.META",name)
				strT[#strT + 1]="\n"..string.rep("\t",rec).."METATABLE:"
				local strTM = {}
				_ToStr(met,strTM,rec,name2)
				local metastr=table.concat(strTM)
				strT[#strT + 1]=metastr
			end
			rec = rec - 1
			return
		end
		_ToStr(t,strTG,recG,nameG)
		return table.concat(strTG)
	end
	print(ToStr(o))
	print("\n")
end


function functablaArgs(t,f,...)
	if type(t) ~= "table" then return f(t,...) end
	local res={}
	for i,v in ipairs(t) do
			res[i]= f(v,...)
	end 
	return res
end
function functablaR(t,f)
	if type(t) ~= "table" then return f(t) end
	local res={}
	for i,v in ipairs(t) do
		if type(v) == "table" then
			res[i] = functablaR(v,f)
		else
			res[i]= f(v)
		end
	end 
	return res
end
-----------------------------------------------------------
--return reverse a mapping
function reverseMapping(t)
    nt = {}
    for key, value in pairs(t) do
        nt[value] = key
    end
    return nt
end


--from the lua manual
function basicSerialize (o)
    if type(o) == "number" or type(o)=="boolean" then
        return tostring(o)
    elseif type(o) == "string" then
        return string.format("%q", o)
	else
		--local try = tostring(o)
		--return try or "nil"
		return "nil"
    end
end


function serializeTable (name, value, saved)
	saved = saved or {}       -- initial value
	local string_table = {}
	
	table.insert(string_table, name.." = ")
	if type(value) == "number" or type(value) == "string" or type(value)=="boolean" then
		table.insert(string_table,basicSerialize(value).."\n")
	elseif type(value) == "table" then
		if saved[value] then    -- value already saved?
			table.insert(string_table,saved[value].."\n")          
		else
			saved[value] = name   -- save name for next time
			table.insert(string_table, "{}\n")          
			for k,v in pairs(value) do      -- save its fields
			
			local fieldname = string.format("%s[%s]", name,
											basicSerialize(k))
			table.insert(string_table, serializeTable(fieldname, v, saved))
			end
		end
	--else
		--error("cannot save a " .. type(value))
	end
	
	return table.concat(string_table)
end
--------------------------------------
REST={isREST=true}
RESTmt = {}
setmetatable(REST,RESTmt)
function RESTmt.__add(a,b)
	return REST
end
function RESTmt.__sub(a,b)
	return REST
end
function RESTmt.__mul(a,b)
	return REST
end
function RESTmt.__div(a,b)
	return REST
end
--to allow wrapAt return REST
function RESTmt.__index(t,k)
	if type(k)=="number" then return REST end
	 --return REST
end
function RESTmt.__tostring(a)
	return "REST" 
end
RESTmt.__metatable = RESTmt
-- finds deepcopys or REST
function IsREST(val)
	return ((type(val)=="table") and val.isREST)
end

require"init.TA"