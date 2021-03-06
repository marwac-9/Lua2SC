

Line=UGen:new{name='Line'}

function Line.kr(start,end_a,dur,mul,add,doneAction)

	start=start or 0;end_a=end_a or 1;dur=dur or 1;mul=mul or 1;add=add or 0;doneAction=doneAction or 0;

	return Line:MultiNew{1,start,end_a,dur,doneAction}:madd(mul,add)

end

function Line.ar(start,end_a,dur,mul,add,doneAction)

	start=start or 0;end_a=end_a or 1;dur=dur or 1;mul=mul or 1;add=add or 0;doneAction=doneAction or 0;

	return Line:MultiNew{2,start,end_a,dur,doneAction}:madd(mul,add)

end

IEnvGen=UGen:new{name='IEnvGen'}

function IEnvGen.kr(ienvelope,index,mul,add)

	mul=mul or 1;add=add or 0;

	return IEnvGen:MultiNew{1,ienvelope,index}:madd(mul,add)

end

function IEnvGen.ar(ienvelope,index,mul,add)

	mul=mul or 1;add=add or 0;

	return IEnvGen:MultiNew{2,ienvelope,index}:madd(mul,add)

end

ListTrig=UGen:new{name='ListTrig'}

function ListTrig.kr(bufnum,reset,offset,numframes)

	bufnum=bufnum or 0;reset=reset or 0;offset=offset or 0;

	return ListTrig:MultiNew{1,bufnum,reset,offset,numframes}

end

DFM1=UGen:new{name='DFM1'}

function DFM1.ar(in_a,freq,res,inputgain,type,noiselevel,mul,add)

	freq=freq or 1000;res=res or 0.1;inputgain=inputgain or 1;type=type or 0;noiselevel=noiselevel or 0.0003;mul=mul or 1;add=add or 0;

	return DFM1:MultiNew{2,in_a,freq,res,inputgain,type,noiselevel}:madd(mul,add)

end

AbstractOut=Out:new{name='AbstractOut'}

Logistic=UGen:new{name='Logistic'}

function Logistic.kr(chaosParam,freq,init,mul,add)

	chaosParam=chaosParam or 3;freq=freq or 1000;init=init or 0.5;mul=mul or 1;add=add or 0;

	return Logistic:MultiNew{1,chaosParam,freq,init}:madd(mul,add)

end

function Logistic.ar(chaosParam,freq,init,mul,add)

	chaosParam=chaosParam or 3;freq=freq or 1000;init=init or 0.5;mul=mul or 1;add=add or 0;

	return Logistic:MultiNew{2,chaosParam,freq,init}:madd(mul,add)

end

LinRand=UGen:new{name='LinRand'}

KeyState=UGen:new{name='KeyState'}

function KeyState.kr(keycode,minval,maxval,lag)

	keycode=keycode or 0;minval=minval or 0;maxval=maxval or 1;lag=lag or 0.2;

	return KeyState:MultiNew{1,keycode,minval,maxval,lag}

end

OSFold8=UGen:new{name='OSFold8'}

function OSFold8.ar(in_a,lo,hi)

		return OSFold8:MultiNew{2,in_a,lo,hi}

end

LFSaw=UGen:new{name='LFSaw'}

function LFSaw.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFSaw:MultiNew{1,freq,iphase}:madd(mul,add)

end

function LFSaw.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFSaw:MultiNew{2,freq,iphase}:madd(mul,add)

end

PitchShift=UGen:new{name='PitchShift'}

function PitchShift.ar(in_a,windowSize,pitchRatio,pitchDispersion,timeDispersion,mul,add)

	in_a=in_a or 0;windowSize=windowSize or 0.2;pitchRatio=pitchRatio or 1;pitchDispersion=pitchDispersion or 0;timeDispersion=timeDispersion or 0;mul=mul or 1;add=add or 0;

	return PitchShift:MultiNew{2,in_a,windowSize,pitchRatio,pitchDispersion,timeDispersion}:madd(mul,add)

end

LTI=UGen:new{name='LTI'}

function LTI.ar(input,bufnuma,bufnumb,mul,add)

	bufnuma=bufnuma or 0;bufnumb=bufnumb or 1;mul=mul or 1;add=add or 0;

	return LTI:MultiNew{2,input,bufnuma,bufnumb}:madd(mul,add)

end

ExpRand=UGen:new{name='ExpRand'}

PV_XFade=UGen:new{name='PV_XFade'}

AtsUGen=UGen:new{name='AtsUGen'}

WeaklyNonlinear=UGen:new{name='WeaklyNonlinear'}

function WeaklyNonlinear.ar(input,reset,ratex,ratey,freq,initx,inity,alpha,xexponent,beta,yexponent,mul,add)

	reset=reset or 0;ratex=ratex or 1;ratey=ratey or 1;freq=freq or 440;initx=initx or 0;inity=inity or 0;alpha=alpha or 0;xexponent=xexponent or 0;beta=beta or 0;yexponent=yexponent or 0;mul=mul or 1;add=add or 0;

	return WeaklyNonlinear:MultiNew{2,input,reset,ratex,ratey,freq,initx,inity,alpha,xexponent,beta,yexponent}:madd(mul,add)

end

Compander=UGen:new{name='Compander'}

function Compander.ar(in_a,control,thresh,slopeBelow,slopeAbove,clampTime,relaxTime,mul,add)

	in_a=in_a or 0;control=control or 0;thresh=thresh or 0.5;slopeBelow=slopeBelow or 1;slopeAbove=slopeAbove or 1;clampTime=clampTime or 0.01;relaxTime=relaxTime or 0.1;mul=mul or 1;add=add or 0;

	return Compander:MultiNew{2,in_a,control,thresh,slopeBelow,slopeAbove,clampTime,relaxTime}:madd(mul,add)

end

VOsc3=UGen:new{name='VOsc3'}

function VOsc3.kr(bufpos,freq1,freq2,freq3,mul,add)

	freq1=freq1 or 110;freq2=freq2 or 220;freq3=freq3 or 440;mul=mul or 1;add=add or 0;

	return VOsc3:MultiNew{1,bufpos,freq1,freq2,freq3}:madd(mul,add)

end

function VOsc3.ar(bufpos,freq1,freq2,freq3,mul,add)

	freq1=freq1 or 110;freq2=freq2 or 220;freq3=freq3 or 440;mul=mul or 1;add=add or 0;

	return VOsc3:MultiNew{2,bufpos,freq1,freq2,freq3}:madd(mul,add)

end

PSinGrain=UGen:new{name='PSinGrain'}

function PSinGrain.ar(freq,dur,amp)

	freq=freq or 440;dur=dur or 0.2;amp=amp or 1;

	return PSinGrain:MultiNew{2,freq,dur,amp}

end

VOSIM=UGen:new{name='VOSIM'}

function VOSIM.ar(trig,freq,nCycles,decay,mul,add)

	trig=trig or 0.1;freq=freq or 400;nCycles=nCycles or 1;decay=decay or 0.9;mul=mul or 1;add=add or 0;

	return VOSIM:MultiNew{2,trig,freq,nCycles,decay}:madd(mul,add)

end

Pause=UGen:new{name='Pause'}

function Pause.kr(gate,id)

		return Pause:MultiNew{1,gate,id}

end

FreeSelf=UGen:new{name='FreeSelf'}

function FreeSelf.kr(in_a)

		return FreeSelf:MultiNew{1,in_a}

end

StkShakers=UGen:new{name='StkShakers'}

function StkShakers.kr(instr,energy,decay,objects,resfreq,mul,add)

	instr=instr or 0;energy=energy or 64;decay=decay or 64;objects=objects or 64;resfreq=resfreq or 64;mul=mul or 1;add=add or 0;

	return StkShakers:MultiNew{1,instr,energy,decay,objects,resfreq}:madd(mul,add)

end

function StkShakers.ar(instr,energy,decay,objects,resfreq,mul,add)

	instr=instr or 0;energy=energy or 64;decay=decay or 64;objects=objects or 64;resfreq=resfreq or 64;mul=mul or 1;add=add or 0;

	return StkShakers:MultiNew{2,instr,energy,decay,objects,resfreq}:madd(mul,add)

end

MoogVCF=UGen:new{name='MoogVCF'}

function MoogVCF.ar(in_a,fco,res,mul,add)

	mul=mul or 1;add=add or 0;

	return MoogVCF:MultiNew{2,in_a,fco,res}:madd(mul,add)

end

NL=UGen:new{name='NL'}

function NL.ar(input,bufnuma,bufnumb,guard1,guard2,mul,add)

	bufnuma=bufnuma or 0;bufnumb=bufnumb or 1;guard1=guard1 or 1000;guard2=guard2 or 100;mul=mul or 1;add=add or 0;

	return NL:MultiNew{2,input,bufnuma,bufnumb,guard1,guard2}:madd(mul,add)

end

GravityGrid=UGen:new{name='GravityGrid'}

function GravityGrid.ar(reset,rate,newx,newy,bufnum,mul,add)

	reset=reset or 0;rate=rate or 0.1;newx=newx or 0;newy=newy or 0;mul=mul or 1;add=add or 0;

	return GravityGrid:MultiNew{2,reset,rate,newx,newy,bufnum}:madd(mul,add)

end

SpecPcile=UGen:new{name='SpecPcile'}

function SpecPcile.kr(buffer,fraction,interpolate)

	fraction=fraction or 0.5;interpolate=interpolate or 0;

	return SpecPcile:MultiNew{1,buffer,fraction,interpolate}

end

ScopeOut=UGen:new{name='ScopeOut'}

function ScopeOut.kr(inputArray,bufnum)

	bufnum=bufnum or 0;

	return ScopeOut:MultiNew{1,inputArray,bufnum}

end

function ScopeOut.ar(inputArray,bufnum)

	bufnum=bufnum or 0;

	return ScopeOut:MultiNew{2,inputArray,bufnum}

end

SinOsc=UGen:new{name='SinOsc'}

function SinOsc.kr(freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return SinOsc:MultiNew{1,freq,phase}:madd(mul,add)

end

function SinOsc.ar(freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return SinOsc:MultiNew{2,freq,phase}:madd(mul,add)

end

FFTComplexDev=UGen:new{name='FFTComplexDev'}

function FFTComplexDev.kr(buffer,rectify,powthresh)

	rectify=rectify or 0;powthresh=powthresh or 0.1;

	return FFTComplexDev:MultiNew{1,buffer,rectify,powthresh}

end

SoftClipper8=UGen:new{name='SoftClipper8'}

function SoftClipper8.ar(in_a)

		return SoftClipper8:MultiNew{2,in_a}

end

ToggleFF=UGen:new{name='ToggleFF'}

function ToggleFF.kr(trig)

	trig=trig or 0;

	return ToggleFF:MultiNew{1,trig}

end

function ToggleFF.ar(trig)

	trig=trig or 0;

	return ToggleFF:MultiNew{2,trig}

end

SinOscFB=UGen:new{name='SinOscFB'}

function SinOscFB.kr(freq,feedback,mul,add)

	freq=freq or 440;feedback=feedback or 0;mul=mul or 1;add=add or 0;

	return SinOscFB:MultiNew{1,freq,feedback}:madd(mul,add)

end

function SinOscFB.ar(freq,feedback,mul,add)

	freq=freq or 440;feedback=feedback or 0;mul=mul or 1;add=add or 0;

	return SinOscFB:MultiNew{2,freq,feedback}:madd(mul,add)

end

PrintVal=UGen:new{name='PrintVal'}

function PrintVal.kr(in_a,numblocks,id)

	numblocks=numblocks or 100;id=id or 0;

	return PrintVal:MultiNew{1,in_a,numblocks,id}

end

Convolution2=UGen:new{name='Convolution2'}

function Convolution2.ar(in_a,kernel,trigger,framesize,mul,add)

	trigger=trigger or 0;framesize=framesize or 2048;mul=mul or 1;add=add or 0;

	return Convolution2:MultiNew{2,in_a,kernel,trigger,framesize}:madd(mul,add)

end

Balance=UGen:new{name='Balance'}

function Balance.ar(in_a,test,hp,stor,mul,add)

	hp=hp or 10;stor=stor or 0;mul=mul or 1;add=add or 0;

	return Balance:MultiNew{2,in_a,test,hp,stor}:madd(mul,add)

end

MaxLocalBufs=UGen:new{name='MaxLocalBufs'}

ScopeOut2=UGen:new{name='ScopeOut2'}

function ScopeOut2.kr(inputArray,scopeNum,maxFrames,scopeFrames)

	scopeNum=scopeNum or 0;maxFrames=maxFrames or 4096;

	return ScopeOut2:MultiNew{1,inputArray,scopeNum,maxFrames,scopeFrames}

end

function ScopeOut2.ar(inputArray,scopeNum,maxFrames,scopeFrames)

	scopeNum=scopeNum or 0;maxFrames=maxFrames or 4096;

	return ScopeOut2:MultiNew{2,inputArray,scopeNum,maxFrames,scopeFrames}

end

GaussTrig=UGen:new{name='GaussTrig'}

function GaussTrig.kr(freq,dev,mul,add)

	freq=freq or 440;dev=dev or 0.3;mul=mul or 1;add=add or 0;

	return GaussTrig:MultiNew{1,freq,dev}:madd(mul,add)

end

function GaussTrig.ar(freq,dev,mul,add)

	freq=freq or 440;dev=dev or 0.3;mul=mul or 1;add=add or 0;

	return GaussTrig:MultiNew{2,freq,dev}:madd(mul,add)

end

MarkovSynth=UGen:new{name='MarkovSynth'}

function MarkovSynth.ar(in_a,isRecording,waitTime,tableSize)

	in_a=in_a or 0;isRecording=isRecording or 1;waitTime=waitTime or 2;tableSize=tableSize or 10;

	return MarkovSynth:MultiNew{2,in_a,isRecording,waitTime,tableSize}

end

Pulse=UGen:new{name='Pulse'}

function Pulse.kr(freq,width,mul,add)

	freq=freq or 440;width=width or 0.5;mul=mul or 1;add=add or 0;

	return Pulse:MultiNew{1,freq,width}:madd(mul,add)

end

function Pulse.ar(freq,width,mul,add)

	freq=freq or 440;width=width or 0.5;mul=mul or 1;add=add or 0;

	return Pulse:MultiNew{2,freq,width}:madd(mul,add)

end

FFTPhaseDev=UGen:new{name='FFTPhaseDev'}

function FFTPhaseDev.kr(buffer,weight,powthresh)

	weight=weight or 0;powthresh=powthresh or 0.1;

	return FFTPhaseDev:MultiNew{1,buffer,weight,powthresh}

end

XFade=UGen:new{name='XFade'}

Gendy2=UGen:new{name='Gendy2'}

function Gendy2.kr(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,a,c,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 20;maxfreq=maxfreq or 1000;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;a=a or 1.17;c=c or 0.31;mul=mul or 1;add=add or 0;

	return Gendy2:MultiNew{1,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,a,c}:madd(mul,add)

end

function Gendy2.ar(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,a,c,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 440;maxfreq=maxfreq or 660;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;a=a or 1.17;c=c or 0.31;mul=mul or 1;add=add or 0;

	return Gendy2:MultiNew{2,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,a,c}:madd(mul,add)

end

PulseCount=UGen:new{name='PulseCount'}

function PulseCount.kr(trig,reset)

	trig=trig or 0;reset=reset or 0;

	return PulseCount:MultiNew{1,trig,reset}

end

function PulseCount.ar(trig,reset)

	trig=trig or 0;reset=reset or 0;

	return PulseCount:MultiNew{2,trig,reset}

end

Sweep=UGen:new{name='Sweep'}

function Sweep.kr(trig,rate)

	trig=trig or 0;rate=rate or 1;

	return Sweep:MultiNew{1,trig,rate}

end

function Sweep.ar(trig,rate)

	trig=trig or 0;rate=rate or 1;

	return Sweep:MultiNew{2,trig,rate}

end

InfoUGenBase=UGen:new{name='InfoUGenBase'}

function InfoUGenBase.ir()

		return InfoUGenBase:MultiNew{0}

end

SendTrig=UGen:new{name='SendTrig'}

function SendTrig.kr(in_a,id,value)

	in_a=in_a or 0;id=id or 0;value=value or 0;

	return SendTrig:MultiNew{1,in_a,id,value}

end

function SendTrig.ar(in_a,id,value)

	in_a=in_a or 0;id=id or 0;value=value or 0;

	return SendTrig:MultiNew{2,in_a,id,value}

end

LastValue=UGen:new{name='LastValue'}

function LastValue.kr(in_a,diff)

	in_a=in_a or 0;diff=diff or 0.01;

	return LastValue:MultiNew{1,in_a,diff}

end

function LastValue.ar(in_a,diff)

	in_a=in_a or 0;diff=diff or 0.01;

	return LastValue:MultiNew{2,in_a,diff}

end

PV_CommonMag=UGen:new{name='PV_CommonMag'}

FreqShift=UGen:new{name='FreqShift'}

function FreqShift.ar(in_a,freq,phase,mul,add)

	freq=freq or 0;phase=phase or 0;mul=mul or 1;add=add or 0;

	return FreqShift:MultiNew{2,in_a,freq,phase}:madd(mul,add)

end

CoinGate=UGen:new{name='CoinGate'}

function CoinGate.kr(prob,in_a)

		return CoinGate:MultiNew{1,prob,in_a}

end

function CoinGate.ar(prob,in_a)

		return CoinGate:MultiNew{2,prob,in_a}

end

FFTFluxPos=UGen:new{name='FFTFluxPos'}

function FFTFluxPos.kr(buffer,normalise)

	normalise=normalise or 1;

	return FFTFluxPos:MultiNew{1,buffer,normalise}

end

LPFVS6=UGen:new{name='LPFVS6'}

function LPFVS6.kr(in_a,freq,slope)

	freq=freq or 1000;slope=slope or 0.5;

	return LPFVS6:MultiNew{1,in_a,freq,slope}

end

function LPFVS6.ar(in_a,freq,slope)

	freq=freq or 1000;slope=slope or 0.5;

	return LPFVS6:MultiNew{2,in_a,freq,slope}

end

Dbrown2=UGen:new{name='Dbrown2'}

CompanderD=UGen:new{name='CompanderD'}

function CompanderD.ar(in_a,thresh,slopeBelow,slopeAbove,clampTime,relaxTime,mul,add)

	in_a=in_a or 0;thresh=thresh or 0.5;slopeBelow=slopeBelow or 1;slopeAbove=slopeAbove or 1;clampTime=clampTime or 0.01;relaxTime=relaxTime or 0.01;mul=mul or 1;add=add or 0;

	return CompanderD:MultiNew{2,in_a,thresh,slopeBelow,slopeAbove,clampTime,relaxTime}:madd(mul,add)

end

MulAdd=UGen:new{name='MulAdd'}

MoogLadder=UGen:new{name='MoogLadder'}

function MoogLadder.kr(in_a,ffreq,res,mul,add)

	ffreq=ffreq or 440;res=res or 0;mul=mul or 1;add=add or 0;

	return MoogLadder:MultiNew{1,in_a,ffreq,res}:madd(mul,add)

end

function MoogLadder.ar(in_a,ffreq,res,mul,add)

	ffreq=ffreq or 440;res=res or 0;mul=mul or 1;add=add or 0;

	return MoogLadder:MultiNew{2,in_a,ffreq,res}:madd(mul,add)

end

Clipper32=UGen:new{name='Clipper32'}

function Clipper32.ar(in_a,lo,hi)

	lo=lo or -0.8;hi=hi or 0.8;

	return Clipper32:MultiNew{2,in_a,lo,hi}

end

FitzHughNagumo=UGen:new{name='FitzHughNagumo'}

function FitzHughNagumo.ar(reset,rateu,ratew,b0,b1,initu,initw,mul,add)

	reset=reset or 0;rateu=rateu or 0.01;ratew=ratew or 0.01;b0=b0 or 1;b1=b1 or 1;initu=initu or 0;initw=initw or 0;mul=mul or 1;add=add or 0;

	return FitzHughNagumo:MultiNew{2,reset,rateu,ratew,b0,b1,initu,initw}:madd(mul,add)

end

WrapSummer=UGen:new{name='WrapSummer'}

function WrapSummer.kr(trig,step,min,max,reset,resetval)

	trig=trig or 0;step=step or 1;min=min or 0;max=max or 1;reset=reset or 0;

	return WrapSummer:MultiNew{1,trig,step,min,max,reset,resetval}

end

function WrapSummer.ar(trig,step,min,max,reset,resetval)

	trig=trig or 0;step=step or 1;min=min or 0;max=max or 1;reset=reset or 0;

	return WrapSummer:MultiNew{2,trig,step,min,max,reset,resetval}

end

CheckBadValues=UGen:new{name='CheckBadValues'}

function CheckBadValues.kr(in_a,id,post)

	in_a=in_a or 0;id=id or 0;post=post or 2;

	return CheckBadValues:MultiNew{1,in_a,id,post}

end

function CheckBadValues.ar(in_a,id,post)

	in_a=in_a or 0;id=id or 0;post=post or 2;

	return CheckBadValues:MultiNew{2,in_a,id,post}

end

Hasher=UGen:new{name='Hasher'}

function Hasher.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Hasher:MultiNew{1,in_a}:madd(mul,add)

end

function Hasher.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Hasher:MultiNew{2,in_a}:madd(mul,add)

end

StkBlowHole=UGen:new{name='StkBlowHole'}

function StkBlowHole.kr(freq,reedstiffness,noisegain,tonehole,register,breathpressure,mul,add)

	freq=freq or 440;reedstiffness=reedstiffness or 64;noisegain=noisegain or 4;tonehole=tonehole or 64;register=register or 11;breathpressure=breathpressure or 64;mul=mul or 1;add=add or 0;

	return StkBlowHole:MultiNew{1,freq,reedstiffness,noisegain,tonehole,register,breathpressure}:madd(mul,add)

end

function StkBlowHole.ar(freq,reedstiffness,noisegain,tonehole,register,breathpressure,mul,add)

	freq=freq or 440;reedstiffness=reedstiffness or 64;noisegain=noisegain or 20;tonehole=tonehole or 64;register=register or 11;breathpressure=breathpressure or 64;mul=mul or 1;add=add or 0;

	return StkBlowHole:MultiNew{2,freq,reedstiffness,noisegain,tonehole,register,breathpressure}:madd(mul,add)

end

BufInfoUGenBase=UGen:new{name='BufInfoUGenBase'}

function BufInfoUGenBase.ir(bufnum)

		return BufInfoUGenBase:MultiNew{0,bufnum}

end

function BufInfoUGenBase.kr(bufnum)

		return BufInfoUGenBase:MultiNew{1,bufnum}

end

XFade2=UGen:new{name='XFade2'}

function XFade2.kr(inA,inB,pan,level)

	inB=inB or 0;pan=pan or 0;level=level or 1;

	return XFade2:MultiNew{1,inA,inB,pan,level}

end

function XFade2.ar(inA,inB,pan,level)

	inB=inB or 0;pan=pan or 0;level=level or 1;

	return XFade2:MultiNew{2,inA,inB,pan,level}

end

Latoocarfian2DN=UGen:new{name='Latoocarfian2DN'}

function Latoocarfian2DN.kr(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DN:MultiNew{1,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

function Latoocarfian2DN.ar(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DN:MultiNew{2,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

TExpRand=UGen:new{name='TExpRand'}

function TExpRand.kr(lo,hi,trig)

	lo=lo or 0.01;hi=hi or 1;trig=trig or 0;

	return TExpRand:MultiNew{1,lo,hi,trig}

end

function TExpRand.ar(lo,hi,trig)

	lo=lo or 0.01;hi=hi or 1;trig=trig or 0;

	return TExpRand:MultiNew{2,lo,hi,trig}

end

Free=UGen:new{name='Free'}

function Free.kr(trig,id)

		return Free:MultiNew{1,trig,id}

end

Unpack1FFT=UGen:new{name='Unpack1FFT'}

MCLDChaosGen=UGen:new{name='MCLDChaosGen'}

SwitchDelay=UGen:new{name='SwitchDelay'}

function SwitchDelay.ar(in_a,drylevel,wetlevel,delaytime,delayfactor,maxdelaytime,mul,add)

	drylevel=drylevel or 1;wetlevel=wetlevel or 1;delaytime=delaytime or 1;delayfactor=delayfactor or 0.7;maxdelaytime=maxdelaytime or 20;mul=mul or 1;add=add or 0;

	return SwitchDelay:MultiNew{2,in_a,drylevel,wetlevel,delaytime,delayfactor,maxdelaytime}:madd(mul,add)

end

ZeroCrossing=UGen:new{name='ZeroCrossing'}

function ZeroCrossing.kr(in_a)

	in_a=in_a or 0;

	return ZeroCrossing:MultiNew{1,in_a}

end

function ZeroCrossing.ar(in_a)

	in_a=in_a or 0;

	return ZeroCrossing:MultiNew{2,in_a}

end

LFPulse=UGen:new{name='LFPulse'}

function LFPulse.kr(freq,iphase,width,mul,add)

	freq=freq or 440;iphase=iphase or 0;width=width or 0.5;mul=mul or 1;add=add or 0;

	return LFPulse:MultiNew{1,freq,iphase,width}:madd(mul,add)

end

function LFPulse.ar(freq,iphase,width,mul,add)

	freq=freq or 440;iphase=iphase or 0;width=width or 0.5;mul=mul or 1;add=add or 0;

	return LFPulse:MultiNew{2,freq,iphase,width}:madd(mul,add)

end

OSWrap8=UGen:new{name='OSWrap8'}

function OSWrap8.ar(in_a,lo,hi)

		return OSWrap8:MultiNew{2,in_a,lo,hi}

end

Dunique=UGen:new{name='Dunique'}

EnvFollow=UGen:new{name='EnvFollow'}

function EnvFollow.kr(input,decaycoeff,mul,add)

	decaycoeff=decaycoeff or 0.99;mul=mul or 1;add=add or 0;

	return EnvFollow:MultiNew{1,input,decaycoeff}:madd(mul,add)

end

function EnvFollow.ar(input,decaycoeff,mul,add)

	decaycoeff=decaycoeff or 0.99;mul=mul or 1;add=add or 0;

	return EnvFollow:MultiNew{2,input,decaycoeff}:madd(mul,add)

end

PosRatio=UGen:new{name='PosRatio'}

function PosRatio.ar(in_a,period,thresh)

	period=period or 100;thresh=thresh or 0.1;

	return PosRatio:MultiNew{2,in_a,period,thresh}

end

StkMandolin=UGen:new{name='StkMandolin'}

function StkMandolin.kr(freq,bodysize,pickposition,stringdamping,stringdetune,aftertouch,trig,mul,add)

	freq=freq or 220;bodysize=bodysize or 64;pickposition=pickposition or 64;stringdamping=stringdamping or 69;stringdetune=stringdetune or 10;aftertouch=aftertouch or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkMandolin:MultiNew{1,freq,bodysize,pickposition,stringdamping,stringdetune,aftertouch,trig}:madd(mul,add)

end

function StkMandolin.ar(freq,bodysize,pickposition,stringdamping,stringdetune,aftertouch,trig,mul,add)

	freq=freq or 520;bodysize=bodysize or 64;pickposition=pickposition or 64;stringdamping=stringdamping or 69;stringdetune=stringdetune or 10;aftertouch=aftertouch or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkMandolin:MultiNew{2,freq,bodysize,pickposition,stringdamping,stringdetune,aftertouch,trig}:madd(mul,add)

end

StandardTrig=UGen:new{name='StandardTrig'}

function StandardTrig.kr(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return StandardTrig:MultiNew{1,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

function StandardTrig.ar(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return StandardTrig:MultiNew{2,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

TBetaRand=UGen:new{name='TBetaRand'}

function TBetaRand.kr(lo,hi,prob1,prob2,trig,mul,add)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TBetaRand:MultiNew{1,lo,hi,prob1,prob2,trig}:madd(mul,add)

end

function TBetaRand.ar(lo,hi,prob1,prob2,trig,mul,add)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TBetaRand:MultiNew{2,lo,hi,prob1,prob2,trig}:madd(mul,add)

end

VarSaw=UGen:new{name='VarSaw'}

function VarSaw.kr(freq,iphase,width,mul,add)

	freq=freq or 440;iphase=iphase or 0;width=width or 0.5;mul=mul or 1;add=add or 0;

	return VarSaw:MultiNew{1,freq,iphase,width}:madd(mul,add)

end

function VarSaw.ar(freq,iphase,width,mul,add)

	freq=freq or 440;iphase=iphase or 0;width=width or 0.5;mul=mul or 1;add=add or 0;

	return VarSaw:MultiNew{2,freq,iphase,width}:madd(mul,add)

end

DynKlank=UGen:new{name='DynKlank'}

function DynKlank.kr(specificationsArrayRef,input,freqscale,freqoffset,decayscale)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;decayscale=decayscale or 1;

	return DynKlank:MultiNew{1,specificationsArrayRef,input,freqscale,freqoffset,decayscale}

end

function DynKlank.ar(specificationsArrayRef,input,freqscale,freqoffset,decayscale)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;decayscale=decayscale or 1;

	return DynKlank:MultiNew{2,specificationsArrayRef,input,freqscale,freqoffset,decayscale}

end

HenonTrig=UGen:new{name='HenonTrig'}

function HenonTrig.kr(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return HenonTrig:MultiNew{1,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

function HenonTrig.ar(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return HenonTrig:MultiNew{2,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

MouseButton=UGen:new{name='MouseButton'}

function MouseButton.kr(minval,maxval,lag)

	minval=minval or 0;maxval=maxval or 1;lag=lag or 0.2;

	return MouseButton:MultiNew{1,minval,maxval,lag}

end

Pluck=UGen:new{name='Pluck'}

function Pluck.ar(in_a,trig,maxdelaytime,delaytime,decaytime,coef,mul,add)

	in_a=in_a or 0;trig=trig or 1;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return Pluck:MultiNew{2,in_a,trig,maxdelaytime,delaytime,decaytime,coef}:madd(mul,add)

end

LinExp=UGen:new{name='LinExp'}

function LinExp.kr(in_a,srclo,srchi,dstlo,dsthi)

	in_a=in_a or 0;srclo=srclo or 0;srchi=srchi or 1;dstlo=dstlo or 1;dsthi=dsthi or 2;

	return LinExp:MultiNew{1,in_a,srclo,srchi,dstlo,dsthi}

end

function LinExp.ar(in_a,srclo,srchi,dstlo,dsthi)

	in_a=in_a or 0;srclo=srclo or 0;srchi=srchi or 1;dstlo=dstlo or 1;dsthi=dsthi or 2;

	return LinExp:MultiNew{2,in_a,srclo,srchi,dstlo,dsthi}

end

GravityGrid2=UGen:new{name='GravityGrid2'}

function GravityGrid2.ar(reset,rate,newx,newy,bufnum,mul,add)

	reset=reset or 0;rate=rate or 0.1;newx=newx or 0;newy=newy or 0;mul=mul or 1;add=add or 0;

	return GravityGrid2:MultiNew{2,reset,rate,newx,newy,bufnum}:madd(mul,add)

end

PV_MagGate=UGen:new{name='PV_MagGate'}

Latch=UGen:new{name='Latch'}

function Latch.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Latch:MultiNew{1,in_a,trig}

end

function Latch.ar(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Latch:MultiNew{2,in_a,trig}

end

SawDPW=UGen:new{name='SawDPW'}

function SawDPW.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return SawDPW:MultiNew{1,freq,iphase}:madd(mul,add)

end

function SawDPW.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return SawDPW:MultiNew{2,freq,iphase}:madd(mul,add)

end

Dust2=UGen:new{name='Dust2'}

function Dust2.kr(density,mul,add)

	density=density or 0;mul=mul or 1;add=add or 0;

	return Dust2:MultiNew{1,density}:madd(mul,add)

end

function Dust2.ar(density,mul,add)

	density=density or 0;mul=mul or 1;add=add or 0;

	return Dust2:MultiNew{2,density}:madd(mul,add)

end

MantissaMask=UGen:new{name='MantissaMask'}

function MantissaMask.kr(in_a,bits,mul,add)

	in_a=in_a or 0;bits=bits or 3;mul=mul or 1;add=add or 0;

	return MantissaMask:MultiNew{1,in_a,bits}:madd(mul,add)

end

function MantissaMask.ar(in_a,bits,mul,add)

	in_a=in_a or 0;bits=bits or 3;mul=mul or 1;add=add or 0;

	return MantissaMask:MultiNew{2,in_a,bits}:madd(mul,add)

end

PlaneTree=UGen:new{name='PlaneTree'}

function PlaneTree.kr(treebuf,in_a,gate)

	gate=gate or 1;

	return PlaneTree:MultiNew{1,treebuf,in_a,gate}

end

Dust=UGen:new{name='Dust'}

function Dust.kr(density,mul,add)

	density=density or 0;mul=mul or 1;add=add or 0;

	return Dust:MultiNew{1,density}:madd(mul,add)

end

function Dust.ar(density,mul,add)

	density=density or 0;mul=mul or 1;add=add or 0;

	return Dust:MultiNew{2,density}:madd(mul,add)

end

TTendency=UGen:new{name='TTendency'}

function TTendency.kr(trigger,dist,parX,parY,parA,parB)

	dist=dist or 0;parX=parX or 0;parY=parY or 1;parA=parA or 0;parB=parB or 0;

	return TTendency:MultiNew{1,trigger,dist,parX,parY,parA,parB}

end

function TTendency.ar(trigger,dist,parX,parY,parA,parB)

	dist=dist or 0;parX=parX or 0;parY=parY or 1;parA=parA or 0;parB=parB or 0;

	return TTendency:MultiNew{2,trigger,dist,parX,parY,parA,parB}

end

SoftClipAmp8=UGen:new{name='SoftClipAmp8'}

function SoftClipAmp8.ar(in_a,pregain,mul,add)

	pregain=pregain or 1;mul=mul or 1;add=add or 0;

	return SoftClipAmp8:MultiNew{2,in_a,pregain}:madd(mul,add)

end

LorenzTrig=UGen:new{name='LorenzTrig'}

function LorenzTrig.kr(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return LorenzTrig:MultiNew{1,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

function LorenzTrig.ar(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return LorenzTrig:MultiNew{2,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

NTube=UGen:new{name='NTube'}

function NTube.ar(input,lossarray,karray,delaylengtharray,mul,add)

	input=input or 0;lossarray=lossarray or 1;mul=mul or 1;add=add or 0;

	return NTube:MultiNew{2,input,lossarray,karray,delaylengtharray}:madd(mul,add)

end

CrossoverDistortion=UGen:new{name='CrossoverDistortion'}

function CrossoverDistortion.ar(in_a,amp,smooth,mul,add)

	amp=amp or 0.5;smooth=smooth or 0.5;mul=mul or 1;add=add or 0;

	return CrossoverDistortion:MultiNew{2,in_a,amp,smooth}:madd(mul,add)

end

Onsets=UGen:new{name='Onsets'}

function Onsets.kr(chain,threshold,odftype,relaxtime,floor,mingap,medianspan,whtype,rawodf)

	threshold=threshold or 0.5;odftype=odftype or 'rcomplex';relaxtime=relaxtime or 1;floor=floor or 0.1;mingap=mingap or 10;medianspan=medianspan or 11;whtype=whtype or 1;rawodf=rawodf or 0;

	return Onsets:MultiNew{1,chain,threshold,odftype,relaxtime,floor,mingap,medianspan,whtype,rawodf}

end

LPF1=UGen:new{name='LPF1'}

function LPF1.kr(in_a,freq)

	freq=freq or 1000;

	return LPF1:MultiNew{1,in_a,freq}

end

function LPF1.ar(in_a,freq)

	freq=freq or 1000;

	return LPF1:MultiNew{2,in_a,freq}

end

WeaklyNonlinear2=UGen:new{name='WeaklyNonlinear2'}

function WeaklyNonlinear2.ar(input,reset,ratex,ratey,freq,initx,inity,alpha,xexponent,beta,yexponent,mul,add)

	reset=reset or 0;ratex=ratex or 1;ratey=ratey or 1;freq=freq or 440;initx=initx or 0;inity=inity or 0;alpha=alpha or 0;xexponent=xexponent or 0;beta=beta or 0;yexponent=yexponent or 0;mul=mul or 1;add=add or 0;

	return WeaklyNonlinear2:MultiNew{2,input,reset,ratex,ratey,freq,initx,inity,alpha,xexponent,beta,yexponent}:madd(mul,add)

end

Tap=UGen:new{name='Tap'}

function Tap.ar(bufnum,numChannels,delaytime)

	bufnum=bufnum or 0;numChannels=numChannels or 1;delaytime=delaytime or 0.2;

	return Tap:MultiNew{2,bufnum,numChannels,delaytime}

end

K2A=UGen:new{name='K2A'}

function K2A.ar(in_a)

	in_a=in_a or 0;

	return K2A:MultiNew{2,in_a}

end

NRand=UGen:new{name='NRand'}

Sieve1=UGen:new{name='Sieve1'}

function Sieve1.kr(bufnum,gap,alternate,mul,add)

	gap=gap or 2;alternate=alternate or 1;mul=mul or 1;add=add or 0;

	return Sieve1:MultiNew{1,bufnum,gap,alternate}:madd(mul,add)

end

function Sieve1.ar(bufnum,gap,alternate,mul,add)

	gap=gap or 2;alternate=alternate or 1;mul=mul or 1;add=add or 0;

	return Sieve1:MultiNew{2,bufnum,gap,alternate}:madd(mul,add)

end

PeakFollower=UGen:new{name='PeakFollower'}

function PeakFollower.kr(in_a,decay)

	in_a=in_a or 0;decay=decay or 0.999;

	return PeakFollower:MultiNew{1,in_a,decay}

end

function PeakFollower.ar(in_a,decay)

	in_a=in_a or 0;decay=decay or 0.999;

	return PeakFollower:MultiNew{2,in_a,decay}

end

FFTSlope=UGen:new{name='FFTSlope'}

function FFTSlope.kr(buffer)

		return FFTSlope:MultiNew{1,buffer}

end

SOMAreaWr=UGen:new{name='SOMAreaWr'}

function SOMAreaWr.kr(bufnum,inputdata,coords,netsize,numdims,nhood,gate)

	netsize=netsize or 10;numdims=numdims or 2;nhood=nhood or 0.5;gate=gate or 1;

	return SOMAreaWr:MultiNew{1,bufnum,inputdata,coords,netsize,numdims,nhood,gate}

end

Clipper4=UGen:new{name='Clipper4'}

function Clipper4.ar(in_a,lo,hi)

	lo=lo or -0.8;hi=hi or 0.8;

	return Clipper4:MultiNew{2,in_a,lo,hi}

end

SendPeakRMS=UGen:new{name='SendPeakRMS'}

function SendPeakRMS.kr(sig,replyRate,peakLag,cmdName,replyID)

	replyRate=replyRate or 20;peakLag=peakLag or 3;cmdName=cmdName or '/reply';replyID=replyID or -1;

	return SendPeakRMS:MultiNew{1,sig,replyRate,peakLag,cmdName,replyID}

end

function SendPeakRMS.ar(sig,replyRate,peakLag,cmdName,replyID)

	replyRate=replyRate or 20;peakLag=peakLag or 3;cmdName=cmdName or '/reply';replyID=replyID or -1;

	return SendPeakRMS:MultiNew{2,sig,replyRate,peakLag,cmdName,replyID}

end

PVSynth=UGen:new{name='PVSynth'}

function PVSynth.ar(pvbuffer,numBins,binStart,binSkip,filePointer,freqMul,freqAdd,mul,add)

	numBins=numBins or 0;binStart=binStart or 0;binSkip=binSkip or 1;filePointer=filePointer or 0;freqMul=freqMul or 1;freqAdd=freqAdd or 0;mul=mul or 1;add=add or 0;

	return PVSynth:MultiNew{2,pvbuffer,numBins,binStart,binSkip,filePointer,freqMul,freqAdd}:madd(mul,add)

end

DegreeToKey=UGen:new{name='DegreeToKey'}

function DegreeToKey.kr(bufnum,in_a,octave,mul,add)

	in_a=in_a or 0;octave=octave or 12;mul=mul or 1;add=add or 0;

	return DegreeToKey:MultiNew{1,bufnum,in_a,octave}:madd(mul,add)

end

function DegreeToKey.ar(bufnum,in_a,octave,mul,add)

	in_a=in_a or 0;octave=octave or 12;mul=mul or 1;add=add or 0;

	return DegreeToKey:MultiNew{2,bufnum,in_a,octave}:madd(mul,add)

end

LPCSynth=UGen:new{name='LPCSynth'}

function LPCSynth.ar(buffer,signal,pointer,mul,add)

	mul=mul or 1;add=add or 0;

	return LPCSynth:MultiNew{2,buffer,signal,pointer}:madd(mul,add)

end

PV_Morph=UGen:new{name='PV_Morph'}

NeedleRect=UGen:new{name='NeedleRect'}

function NeedleRect.ar(rate,imgWidth,imgHeight,rectX,rectY,rectW,rectH)

	rate=rate or 1;imgWidth=imgWidth or 100;imgHeight=imgHeight or 100;rectX=rectX or 0;rectY=rectY or 0;rectW=rectW or 100;rectH=rectH or 100;

	return NeedleRect:MultiNew{2,rate,imgWidth,imgHeight,rectX,rectY,rectW,rectH}

end

InRect=UGen:new{name='InRect'}

function InRect.kr(x,y,rect)

	x=x or 0;y=y or 0;

	return InRect:MultiNew{1,x,y,rect}

end

function InRect.ar(x,y,rect)

	x=x or 0;y=y or 0;

	return InRect:MultiNew{2,x,y,rect}

end

AmpComp=UGen:new{name='AmpComp'}

function AmpComp.ir(freq,root,exp)

	exp=exp or 0.3333;

	return AmpComp:MultiNew{0,freq,root,exp}

end

function AmpComp.kr(freq,root,exp)

	exp=exp or 0.3333;

	return AmpComp:MultiNew{1,freq,root,exp}

end

function AmpComp.ar(freq,root,exp)

	exp=exp or 0.3333;

	return AmpComp:MultiNew{2,freq,root,exp}

end

TermanWang=UGen:new{name='TermanWang'}

function TermanWang.ar(input,reset,ratex,ratey,alpha,beta,eta,initx,inity,mul,add)

	input=input or 0;reset=reset or 0;ratex=ratex or 0.01;ratey=ratey or 0.01;alpha=alpha or 1;beta=beta or 1;eta=eta or 1;initx=initx or 0;inity=inity or 0;mul=mul or 1;add=add or 0;

	return TermanWang:MultiNew{2,input,reset,ratex,ratey,alpha,beta,eta,initx,inity}:madd(mul,add)

end

EnvGen=UGen:new{name='EnvGen'}

function EnvGen.kr(envelope,gate,levelScale,levelBias,timeScale,doneAction)

	gate=gate or 1;levelScale=levelScale or 1;levelBias=levelBias or 0;timeScale=timeScale or 1;doneAction=doneAction or 0;

	return EnvGen:MultiNew{1,envelope,gate,levelScale,levelBias,timeScale,doneAction}

end

function EnvGen.ar(envelope,gate,levelScale,levelBias,timeScale,doneAction)

	gate=gate or 1;levelScale=levelScale or 1;levelBias=levelBias or 0;timeScale=timeScale or 1;doneAction=doneAction or 0;

	return EnvGen:MultiNew{2,envelope,gate,levelScale,levelBias,timeScale,doneAction}

end

TBrownRand=UGen:new{name='TBrownRand'}

function TBrownRand.kr(lo,hi,dev,dist,trig,mul,add)

	lo=lo or 0;hi=hi or 1;dev=dev or 1;dist=dist or 0;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TBrownRand:MultiNew{1,lo,hi,dev,dist,trig}:madd(mul,add)

end

function TBrownRand.ar(lo,hi,dev,dist,trig,mul,add)

	lo=lo or 0;hi=hi or 1;dev=dev or 1;dist=dist or 0;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TBrownRand:MultiNew{2,lo,hi,dev,dist,trig}:madd(mul,add)

end

Coyote=UGen:new{name='Coyote'}

function Coyote.kr(in_a,trackFall,slowLag,fastLag,fastMul,thresh,minDur)

	in_a=in_a or 0;trackFall=trackFall or 0.2;slowLag=slowLag or 0.2;fastLag=fastLag or 0.01;fastMul=fastMul or 0.5;thresh=thresh or 0.05;minDur=minDur or 0.1;

	return Coyote:MultiNew{1,in_a,trackFall,slowLag,fastLag,fastMul,thresh,minDur}

end

TextVU=UGen:new{name='TextVU'}

function TextVU.kr(trig,in_a,label,width,reset,ana)

	trig=trig or 2;width=width or 21;reset=reset or 0;

	return TextVU:MultiNew{1,trig,in_a,label,width,reset,ana}

end

function TextVU.ar(trig,in_a,label,width,reset,ana)

	trig=trig or 2;width=width or 21;reset=reset or 0;

	return TextVU:MultiNew{2,trig,in_a,label,width,reset,ana}

end

Select=UGen:new{name='Select'}

function Select.kr(which,array)

		return Select:MultiNew{1,which,array}

end

function Select.ar(which,array)

		return Select:MultiNew{2,which,array}

end

Index=UGen:new{name='Index'}

function Index.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Index:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function Index.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Index:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

AmplitudeMod=UGen:new{name='AmplitudeMod'}

function AmplitudeMod.kr(in_a,attackTime,releaseTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;releaseTime=releaseTime or 0.01;mul=mul or 1;add=add or 0;

	return AmplitudeMod:MultiNew{1,in_a,attackTime,releaseTime}:madd(mul,add)

end

function AmplitudeMod.ar(in_a,attackTime,releaseTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;releaseTime=releaseTime or 0.01;mul=mul or 1;add=add or 0;

	return AmplitudeMod:MultiNew{2,in_a,attackTime,releaseTime}:madd(mul,add)

end

BFDecoder=UGen:new{name='BFDecoder'}

FFTSpread=UGen:new{name='FFTSpread'}

function FFTSpread.kr(buffer,centroid)

		return FFTSpread:MultiNew{1,buffer,centroid}

end

Maxamp=UGen:new{name='Maxamp'}

function Maxamp.ar(in_a,numSamps)

	numSamps=numSamps or 1000;

	return Maxamp:MultiNew{2,in_a,numSamps}

end

Streson=UGen:new{name='Streson'}

function Streson.kr(input,delayTime,res,mul,add)

	delayTime=delayTime or 0.003;res=res or 0.9;mul=mul or 1;add=add or 0;

	return Streson:MultiNew{1,input,delayTime,res}:madd(mul,add)

end

function Streson.ar(input,delayTime,res,mul,add)

	delayTime=delayTime or 0.003;res=res or 0.9;mul=mul or 1;add=add or 0;

	return Streson:MultiNew{2,input,delayTime,res}:madd(mul,add)

end

Instruction=UGen:new{name='Instruction'}

function Instruction.ar(bufnum,mul,add)

	bufnum=bufnum or 0;mul=mul or 1;add=add or 0;

	return Instruction:MultiNew{2,bufnum}:madd(mul,add)

end

Logger=UGen:new{name='Logger'}

function Logger.kr(inputArray,trig,bufnum,reset)

	trig=trig or 0;bufnum=bufnum or 0;reset=reset or 0;

	return Logger:MultiNew{1,inputArray,trig,bufnum,reset}

end

Concat2=UGen:new{name='Concat2'}

function Concat2.ar(control,source,storesize,seektime,seekdur,matchlength,freezestore,zcr,lms,sc,st,randscore,threshold,mul,add)

	storesize=storesize or 1;seektime=seektime or 1;seekdur=seekdur or 1;matchlength=matchlength or 0.05;freezestore=freezestore or 0;zcr=zcr or 1;lms=lms or 1;sc=sc or 1;st=st or 0;randscore=randscore or 0;threshold=threshold or 0.01;mul=mul or 1;add=add or 0;

	return Concat2:MultiNew{2,control,source,storesize,seektime,seekdur,matchlength,freezestore,zcr,lms,sc,st,randscore,threshold}:madd(mul,add)

end

RunningSum=UGen:new{name='RunningSum'}

function RunningSum.kr(in_a,numsamp)

	numsamp=numsamp or 40;

	return RunningSum:MultiNew{1,in_a,numsamp}

end

function RunningSum.ar(in_a,numsamp)

	numsamp=numsamp or 40;

	return RunningSum:MultiNew{2,in_a,numsamp}

end

OscN=UGen:new{name='OscN'}

function OscN.kr(bufnum,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return OscN:MultiNew{1,bufnum,freq,phase}:madd(mul,add)

end

function OscN.ar(bufnum,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return OscN:MultiNew{2,bufnum,freq,phase}:madd(mul,add)

end

IIRFilter=UGen:new{name='IIRFilter'}

function IIRFilter.ar(in_a,freq,rq,mul,add)

	freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return IIRFilter:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

LPCAnalyzer=UGen:new{name='LPCAnalyzer'}

function LPCAnalyzer.ar(input,source,n,p,testE,delta,windowtype,mul,add)

	input=input or 0;source=source or 0.01;n=n or 256;p=p or 10;testE=testE or 0;delta=delta or 0.999;windowtype=windowtype or 0;mul=mul or 1;add=add or 0;

	return LPCAnalyzer:MultiNew{2,input,source,n,p,testE,delta,windowtype}:madd(mul,add)

end

StkBeeThree=UGen:new{name='StkBeeThree'}

function StkBeeThree.kr(freq,op4gain,op3gain,lfospeed,lfodepth,adsrtarget,trig,mul,add)

	freq=freq or 440;op4gain=op4gain or 10;op3gain=op3gain or 20;lfospeed=lfospeed or 64;lfodepth=lfodepth or 0;adsrtarget=adsrtarget or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkBeeThree:MultiNew{1,freq,op4gain,op3gain,lfospeed,lfodepth,adsrtarget,trig}:madd(mul,add)

end

function StkBeeThree.ar(freq,op4gain,op3gain,lfospeed,lfodepth,adsrtarget,trig,mul,add)

	freq=freq or 440;op4gain=op4gain or 10;op3gain=op3gain or 20;lfospeed=lfospeed or 64;lfodepth=lfodepth or 0;adsrtarget=adsrtarget or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkBeeThree:MultiNew{2,freq,op4gain,op3gain,lfospeed,lfodepth,adsrtarget,trig}:madd(mul,add)

end

PV_Compander=UGen:new{name='PV_Compander'}

BufWr=UGen:new{name='BufWr'}

function BufWr.kr(inputArray,bufnum,phase,loop)

	bufnum=bufnum or 0;phase=phase or 0;loop=loop or 1;

	return BufWr:MultiNew{1,inputArray,bufnum,phase,loop}

end

function BufWr.ar(inputArray,bufnum,phase,loop)

	bufnum=bufnum or 0;phase=phase or 0;loop=loop or 1;

	return BufWr:MultiNew{2,inputArray,bufnum,phase,loop}

end

Rand=UGen:new{name='Rand'}

PauseSelf=UGen:new{name='PauseSelf'}

function PauseSelf.kr(in_a)

		return PauseSelf:MultiNew{1,in_a}

end

BasicOpUGen=UGen:new{name='BasicOpUGen'}

StkBowed=UGen:new{name='StkBowed'}

function StkBowed.kr(freq,bowpressure,bowposition,vibfreq,vibgain,loudness,trig,mul,add)

	freq=freq or 220;bowpressure=bowpressure or 64;bowposition=bowposition or 64;vibfreq=vibfreq or 64;vibgain=vibgain or 64;loudness=loudness or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkBowed:MultiNew{1,freq,bowpressure,bowposition,vibfreq,vibgain,loudness,trig}:madd(mul,add)

end

function StkBowed.ar(freq,bowpressure,bowposition,vibfreq,vibgain,loudness,gate,attackrate,decayrate,mul,add)

	freq=freq or 220;bowpressure=bowpressure or 64;bowposition=bowposition or 64;vibfreq=vibfreq or 64;vibgain=vibgain or 64;loudness=loudness or 64;gate=gate or 1;attackrate=attackrate or 1;decayrate=decayrate or 1;mul=mul or 1;add=add or 0;

	return StkBowed:MultiNew{2,freq,bowpressure,bowposition,vibfreq,vibgain,loudness,gate,attackrate,decayrate}:madd(mul,add)

end

Linen=UGen:new{name='Linen'}

function Linen.kr(gate,attackTime,susLevel,releaseTime,doneAction)

	gate=gate or 1;attackTime=attackTime or 0.01;susLevel=susLevel or 1;releaseTime=releaseTime or 1;doneAction=doneAction or 0;

	return Linen:MultiNew{1,gate,attackTime,susLevel,releaseTime,doneAction}

end

Clockmus=UGen:new{name='Clockmus'}

function Clockmus.kr()

		return Clockmus:MultiNew{1}

end

PV_MagScale=UGen:new{name='PV_MagScale'}

COsc=UGen:new{name='COsc'}

function COsc.kr(bufnum,freq,beats,mul,add)

	freq=freq or 440;beats=beats or 0.5;mul=mul or 1;add=add or 0;

	return COsc:MultiNew{1,bufnum,freq,beats}:madd(mul,add)

end

function COsc.ar(bufnum,freq,beats,mul,add)

	freq=freq or 440;beats=beats or 0.5;mul=mul or 1;add=add or 0;

	return COsc:MultiNew{2,bufnum,freq,beats}:madd(mul,add)

end

StkClarinet=UGen:new{name='StkClarinet'}

function StkClarinet.kr(freq,reedstiffness,noisegain,vibfreq,vibgain,breathpressure,trig,mul,add)

	freq=freq or 440;reedstiffness=reedstiffness or 64;noisegain=noisegain or 4;vibfreq=vibfreq or 64;vibgain=vibgain or 11;breathpressure=breathpressure or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkClarinet:MultiNew{1,freq,reedstiffness,noisegain,vibfreq,vibgain,breathpressure,trig}:madd(mul,add)

end

function StkClarinet.ar(freq,reedstiffness,noisegain,vibfreq,vibgain,breathpressure,trig,mul,add)

	freq=freq or 440;reedstiffness=reedstiffness or 64;noisegain=noisegain or 4;vibfreq=vibfreq or 64;vibgain=vibgain or 11;breathpressure=breathpressure or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkClarinet:MultiNew{2,freq,reedstiffness,noisegain,vibfreq,vibgain,breathpressure,trig}:madd(mul,add)

end

OSTrunc4=UGen:new{name='OSTrunc4'}

function OSTrunc4.ar(in_a,quant)

	quant=quant or 0.5;

	return OSTrunc4:MultiNew{2,in_a,quant}

end

Peak=UGen:new{name='Peak'}

function Peak.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Peak:MultiNew{1,in_a,trig}

end

function Peak.ar(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Peak:MultiNew{2,in_a,trig}

end

AverageOutput=UGen:new{name='AverageOutput'}

function AverageOutput.kr(in_a,trig,mul,add)

	trig=trig or 0;mul=mul or 1;add=add or 0;

	return AverageOutput:MultiNew{1,in_a,trig}:madd(mul,add)

end

function AverageOutput.ar(in_a,trig,mul,add)

	trig=trig or 0;mul=mul or 1;add=add or 0;

	return AverageOutput:MultiNew{2,in_a,trig}:madd(mul,add)

end

JoshGrain=UGen:new{name='JoshGrain'}

Concat=UGen:new{name='Concat'}

function Concat.ar(control,source,storesize,seektime,seekdur,matchlength,freezestore,zcr,lms,sc,st,randscore,mul,add)

	storesize=storesize or 1;seektime=seektime or 1;seekdur=seekdur or 1;matchlength=matchlength or 0.05;freezestore=freezestore or 0;zcr=zcr or 1;lms=lms or 1;sc=sc or 1;st=st or 0;randscore=randscore or 0;mul=mul or 1;add=add or 0;

	return Concat:MultiNew{2,control,source,storesize,seektime,seekdur,matchlength,freezestore,zcr,lms,sc,st,randscore}:madd(mul,add)

end

FFTCrest=UGen:new{name='FFTCrest'}

function FFTCrest.kr(buffer,freqlo,freqhi)

	freqlo=freqlo or 0;freqhi=freqhi or 50000;

	return FFTCrest:MultiNew{1,buffer,freqlo,freqhi}

end

WidthFirstUGen=UGen:new{name='WidthFirstUGen'}

Duty=UGen:new{name='Duty'}

function Duty.kr(dur,reset,level,doneAction)

	dur=dur or 1;reset=reset or 0;level=level or 1;doneAction=doneAction or 0;

	return Duty:MultiNew{1,dur,reset,level,doneAction}

end

function Duty.ar(dur,reset,level,doneAction)

	dur=dur or 1;reset=reset or 0;level=level or 1;doneAction=doneAction or 0;

	return Duty:MultiNew{2,dur,reset,level,doneAction}

end

WhiteNoise=UGen:new{name='WhiteNoise'}

function WhiteNoise.kr(mul,add)

	mul=mul or 1;add=add or 0;

	return WhiteNoise:MultiNew{1}:madd(mul,add)

end

function WhiteNoise.ar(mul,add)

	mul=mul or 1;add=add or 0;

	return WhiteNoise:MultiNew{2}:madd(mul,add)

end

Squiz=UGen:new{name='Squiz'}

function Squiz.kr(in_a,pitchratio,zcperchunk,memlen,mul,add)

	pitchratio=pitchratio or 2;zcperchunk=zcperchunk or 1;memlen=memlen or 0.1;mul=mul or 1;add=add or 0;

	return Squiz:MultiNew{1,in_a,pitchratio,zcperchunk,memlen}:madd(mul,add)

end

function Squiz.ar(in_a,pitchratio,zcperchunk,memlen,mul,add)

	pitchratio=pitchratio or 2;zcperchunk=zcperchunk or 1;memlen=memlen or 0.1;mul=mul or 1;add=add or 0;

	return Squiz:MultiNew{2,in_a,pitchratio,zcperchunk,memlen}:madd(mul,add)

end

SVF=UGen:new{name='SVF'}

function SVF.kr(signal,cutoff,res,lowpass,bandpass,highpass,notch,peak,mul,add)

	cutoff=cutoff or 2200;res=res or 0.1;lowpass=lowpass or 1;bandpass=bandpass or 0;highpass=highpass or 0;notch=notch or 0;peak=peak or 0;mul=mul or 1;add=add or 0;

	return SVF:MultiNew{1,signal,cutoff,res,lowpass,bandpass,highpass,notch,peak}:madd(mul,add)

end

function SVF.ar(signal,cutoff,res,lowpass,bandpass,highpass,notch,peak,mul,add)

	cutoff=cutoff or 2200;res=res or 0.1;lowpass=lowpass or 1;bandpass=bandpass or 0;highpass=highpass or 0;notch=notch or 0;peak=peak or 0;mul=mul or 1;add=add or 0;

	return SVF:MultiNew{2,signal,cutoff,res,lowpass,bandpass,highpass,notch,peak}:madd(mul,add)

end

SpecFlatness=UGen:new{name='SpecFlatness'}

function SpecFlatness.kr(buffer)

		return SpecFlatness:MultiNew{1,buffer}

end

TBall=UGen:new{name='TBall'}

function TBall.kr(in_a,g,damp,friction)

	in_a=in_a or 0;g=g or 10;damp=damp or 0;friction=friction or 0.01;

	return TBall:MultiNew{1,in_a,g,damp,friction}

end

function TBall.ar(in_a,g,damp,friction)

	in_a=in_a or 0;g=g or 10;damp=damp or 0;friction=friction or 0.01;

	return TBall:MultiNew{2,in_a,g,damp,friction}

end

FFTMKL=UGen:new{name='FFTMKL'}

function FFTMKL.kr(buffer,epsilon)

	epsilon=epsilon or 1e-006;

	return FFTMKL:MultiNew{1,buffer,epsilon}

end

LPF18=UGen:new{name='LPF18'}

function LPF18.ar(in_a,freq,res,dist)

	freq=freq or 100;res=res or 1;dist=dist or 0.4;

	return LPF18:MultiNew{2,in_a,freq,res,dist}

end

MostChange=UGen:new{name='MostChange'}

function MostChange.kr(a,b)

	a=a or 0;b=b or 0;

	return MostChange:MultiNew{1,a,b}

end

function MostChange.ar(a,b)

	a=a or 0;b=b or 0;

	return MostChange:MultiNew{2,a,b}

end

SLOnset=UGen:new{name='SLOnset'}

function SLOnset.kr(input,memorysize1,before,after,threshold,hysteresis,mul,add)

	memorysize1=memorysize1 or 20;before=before or 5;after=after or 5;threshold=threshold or 10;hysteresis=hysteresis or 10;mul=mul or 1;add=add or 0;

	return SLOnset:MultiNew{1,input,memorysize1,before,after,threshold,hysteresis}:madd(mul,add)

end

FFTPower=UGen:new{name='FFTPower'}

function FFTPower.kr(buffer,square)

	square=square or true;

	return FFTPower:MultiNew{1,buffer,square}

end

WaveTerrain=UGen:new{name='WaveTerrain'}

function WaveTerrain.ar(bufnum,x,y,xsize,ysize,mul,add)

	bufnum=bufnum or 0;xsize=xsize or 100;ysize=ysize or 100;mul=mul or 1;add=add or 0;

	return WaveTerrain:MultiNew{2,bufnum,x,y,xsize,ysize}:madd(mul,add)

end

LFNoise0=UGen:new{name='LFNoise0'}

function LFNoise0.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise0:MultiNew{1,freq}:madd(mul,add)

end

function LFNoise0.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise0:MultiNew{2,freq}:madd(mul,add)

end

LatoocarfianTrig=UGen:new{name='LatoocarfianTrig'}

function LatoocarfianTrig.kr(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return LatoocarfianTrig:MultiNew{1,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

function LatoocarfianTrig.ar(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return LatoocarfianTrig:MultiNew{2,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

DUGen=UGen:new{name='DUGen'}

Breakcore=UGen:new{name='Breakcore'}

function Breakcore.ar(bufnum,capturein,capturetrigger,duration,ampdropout)

	bufnum=bufnum or 0;duration=duration or 0.1;

	return Breakcore:MultiNew{2,bufnum,capturein,capturetrigger,duration,ampdropout}

end

Disintegrator=UGen:new{name='Disintegrator'}

function Disintegrator.ar(in_a,probability,multiplier,mul,add)

	probability=probability or 0.5;multiplier=multiplier or 0;mul=mul or 1;add=add or 0;

	return Disintegrator:MultiNew{2,in_a,probability,multiplier}:madd(mul,add)

end

DelTapWr=UGen:new{name='DelTapWr'}

function DelTapWr.kr(buffer,in_a)

		return DelTapWr:MultiNew{1,buffer,in_a}

end

function DelTapWr.ar(buffer,in_a)

		return DelTapWr:MultiNew{2,buffer,in_a}

end

TPV=UGen:new{name='TPV'}

function TPV.ar(chain,windowsize,hopsize,maxpeaks,currentpeaks,freqmult,tolerance,noisefloor,mul,add)

	windowsize=windowsize or 1024;hopsize=hopsize or 512;maxpeaks=maxpeaks or 80;freqmult=freqmult or 1;tolerance=tolerance or 4;noisefloor=noisefloor or 0.2;mul=mul or 1;add=add or 0;

	return TPV:MultiNew{2,chain,windowsize,hopsize,maxpeaks,currentpeaks,freqmult,tolerance,noisefloor}:madd(mul,add)

end

Gendy3=UGen:new{name='Gendy3'}

function Gendy3.kr(ampdist,durdist,adparam,ddparam,freq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;freq=freq or 440;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy3:MultiNew{1,ampdist,durdist,adparam,ddparam,freq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

function Gendy3.ar(ampdist,durdist,adparam,ddparam,freq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;freq=freq or 440;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy3:MultiNew{2,ampdist,durdist,adparam,ddparam,freq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

NestedAllpassN=UGen:new{name='NestedAllpassN'}

function NestedAllpassN.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,mul,add)

	maxdelay1=maxdelay1 or 0.036;delay1=delay1 or 0.036;gain1=gain1 or 0.08;maxdelay2=maxdelay2 or 0.03;delay2=delay2 or 0.03;gain2=gain2 or 0.3;mul=mul or 1;add=add or 0;

	return NestedAllpassN:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2}:madd(mul,add)

end

Getenv=UGen:new{name='Getenv'}

FhnTrig=UGen:new{name='FhnTrig'}

function FhnTrig.kr(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 4;maxfreq=maxfreq or 10;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return FhnTrig:MultiNew{1,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

function FhnTrig.ar(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 4;maxfreq=maxfreq or 10;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return FhnTrig:MultiNew{2,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

KmeansToBPSet1=UGen:new{name='KmeansToBPSet1'}

function KmeansToBPSet1.ar(freq,numdatapoints,maxnummeans,nummeans,tnewdata,tnewmeans,soft,bufnum,mul,add)

	freq=freq or 440;numdatapoints=numdatapoints or 20;maxnummeans=maxnummeans or 4;nummeans=nummeans or 4;tnewdata=tnewdata or 1;tnewmeans=tnewmeans or 1;soft=soft or 1;mul=mul or 1;add=add or 0;

	return KmeansToBPSet1:MultiNew{2,freq,numdatapoints,maxnummeans,nummeans,tnewdata,tnewmeans,soft,bufnum}:madd(mul,add)

end

BufDelayN=UGen:new{name='BufDelayN'}

function BufDelayN.kr(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayN:MultiNew{1,buf,in_a,delaytime}:madd(mul,add)

end

function BufDelayN.ar(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayN:MultiNew{2,buf,in_a,delaytime}:madd(mul,add)

end

Crackle=UGen:new{name='Crackle'}

function Crackle.kr(chaosParam,mul,add)

	chaosParam=chaosParam or 1.5;mul=mul or 1;add=add or 0;

	return Crackle:MultiNew{1,chaosParam}:madd(mul,add)

end

function Crackle.ar(chaosParam,mul,add)

	chaosParam=chaosParam or 1.5;mul=mul or 1;add=add or 0;

	return Crackle:MultiNew{2,chaosParam}:madd(mul,add)

end

Spring=UGen:new{name='Spring'}

function Spring.kr(in_a,spring,damp)

	in_a=in_a or 0;spring=spring or 1;damp=damp or 0;

	return Spring:MultiNew{1,in_a,spring,damp}

end

function Spring.ar(in_a,spring,damp)

	in_a=in_a or 0;spring=spring or 1;damp=damp or 0;

	return Spring:MultiNew{2,in_a,spring,damp}

end

PeakEQ4=UGen:new{name='PeakEQ4'}

function PeakEQ4.ar(in_a,freq,rs,db)

	freq=freq or 1200;rs=rs or 1;db=db or 0;

	return PeakEQ4:MultiNew{2,in_a,freq,rs,db}

end

StkModalBar=UGen:new{name='StkModalBar'}

function StkModalBar.kr(freq,instrument,stickhardness,stickposition,vibratogain,vibratofreq,directstickmix,volume,trig,mul,add)

	freq=freq or 440;instrument=instrument or 0;stickhardness=stickhardness or 64;stickposition=stickposition or 64;vibratogain=vibratogain or 20;vibratofreq=vibratofreq or 20;directstickmix=directstickmix or 64;volume=volume or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkModalBar:MultiNew{1,freq,instrument,stickhardness,stickposition,vibratogain,vibratofreq,directstickmix,volume,trig}:madd(mul,add)

end

function StkModalBar.ar(freq,instrument,stickhardness,stickposition,vibratogain,vibratofreq,directstickmix,volume,trig,mul,add)

	freq=freq or 440;instrument=instrument or 0;stickhardness=stickhardness or 64;stickposition=stickposition or 64;vibratogain=vibratogain or 20;vibratofreq=vibratofreq or 20;directstickmix=directstickmix or 64;volume=volume or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkModalBar:MultiNew{2,freq,instrument,stickhardness,stickposition,vibratogain,vibratofreq,directstickmix,volume,trig}:madd(mul,add)

end

Metro=UGen:new{name='Metro'}

function Metro.kr(bpm,numBeats,mul,add)

	mul=mul or 1;add=add or 0;

	return Metro:MultiNew{1,bpm,numBeats}:madd(mul,add)

end

function Metro.ar(bpm,numBeats,mul,add)

	mul=mul or 1;add=add or 0;

	return Metro:MultiNew{2,bpm,numBeats}:madd(mul,add)

end

Henon2DN=UGen:new{name='Henon2DN'}

function Henon2DN.kr(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DN:MultiNew{1,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

function Henon2DN.ar(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DN:MultiNew{2,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

Ball=UGen:new{name='Ball'}

function Ball.kr(in_a,g,damp,friction)

	in_a=in_a or 0;g=g or 1;damp=damp or 0;friction=friction or 0.01;

	return Ball:MultiNew{1,in_a,g,damp,friction}

end

function Ball.ar(in_a,g,damp,friction)

	in_a=in_a or 0;g=g or 1;damp=damp or 0;friction=friction or 0.01;

	return Ball:MultiNew{2,in_a,g,damp,friction}

end

Osc=UGen:new{name='Osc'}

function Osc.kr(bufnum,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return Osc:MultiNew{1,bufnum,freq,phase}:madd(mul,add)

end

function Osc.ar(bufnum,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return Osc:MultiNew{2,bufnum,freq,phase}:madd(mul,add)

end

Delay1=UGen:new{name='Delay1'}

function Delay1.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Delay1:MultiNew{1,in_a}:madd(mul,add)

end

function Delay1.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Delay1:MultiNew{2,in_a}:madd(mul,add)

end

Filter=UGen:new{name='Filter'}

KeyTrack=UGen:new{name='KeyTrack'}

function KeyTrack.kr(chain,keydecay,chromaleak)

	keydecay=keydecay or 2;chromaleak=chromaleak or 0.5;

	return KeyTrack:MultiNew{1,chain,keydecay,chromaleak}

end

Clipper8=UGen:new{name='Clipper8'}

function Clipper8.ar(in_a,lo,hi)

	lo=lo or -0.8;hi=hi or 0.8;

	return Clipper8:MultiNew{2,in_a,lo,hi}

end

OSFold4=UGen:new{name='OSFold4'}

function OSFold4.ar(in_a,lo,hi)

		return OSFold4:MultiNew{2,in_a,lo,hi}

end

DelTapRd=UGen:new{name='DelTapRd'}

function DelTapRd.kr(buffer,phase,delTime,interp,mul,add)

	interp=interp or 1;mul=mul or 1;add=add or 0;

	return DelTapRd:MultiNew{1,buffer,phase,delTime,interp}:madd(mul,add)

end

function DelTapRd.ar(buffer,phase,delTime,interp,mul,add)

	interp=interp or 1;mul=mul or 1;add=add or 0;

	return DelTapRd:MultiNew{2,buffer,phase,delTime,interp}:madd(mul,add)

end

SpecCentroid=UGen:new{name='SpecCentroid'}

function SpecCentroid.kr(buffer)

		return SpecCentroid:MultiNew{1,buffer}

end

GaussClass=UGen:new{name='GaussClass'}

function GaussClass.kr(in_a,bufnum,gate)

	bufnum=bufnum or 0;gate=gate or 0;

	return GaussClass:MultiNew{1,in_a,bufnum,gate}

end

FFTDiffMags=UGen:new{name='FFTDiffMags'}

function FFTDiffMags.kr(bufferA,bufferB)

		return FFTDiffMags:MultiNew{1,bufferA,bufferB}

end

HilbertFIR=UGen:new{name='HilbertFIR'}

function HilbertFIR.ar(in_a,buffer)

		return HilbertFIR:MultiNew{2,in_a,buffer}

end

Loudness=UGen:new{name='Loudness'}

function Loudness.kr(chain,smask,tmask)

	smask=smask or 0.25;tmask=tmask or 1;

	return Loudness:MultiNew{1,chain,smask,tmask}

end

Standard2DN=UGen:new{name='Standard2DN'}

function Standard2DN.kr(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DN:MultiNew{1,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

function Standard2DN.ar(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DN:MultiNew{2,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

LPCError=UGen:new{name='LPCError'}

function LPCError.ar(input,p,mul,add)

	p=p or 10;mul=mul or 1;add=add or 0;

	return LPCError:MultiNew{2,input,p}:madd(mul,add)

end

MembraneCircle=UGen:new{name='MembraneCircle'}

function MembraneCircle.ar(excitation,tension,loss,mul,add)

	tension=tension or 0.05;loss=loss or 0.99999;mul=mul or 1;add=add or 0;

	return MembraneCircle:MultiNew{2,excitation,tension,loss}:madd(mul,add)

end

SoftClipAmp=UGen:new{name='SoftClipAmp'}

function SoftClipAmp.ar(in_a,pregain,mul,add)

	pregain=pregain or 1;mul=mul or 1;add=add or 0;

	return SoftClipAmp:MultiNew{2,in_a,pregain}:madd(mul,add)

end

DoubleWell=UGen:new{name='DoubleWell'}

function DoubleWell.ar(reset,ratex,ratey,f,w,delta,initx,inity,mul,add)

	reset=reset or 0;ratex=ratex or 0.01;ratey=ratey or 0.01;f=f or 1;w=w or 0.001;delta=delta or 1;initx=initx or 0;inity=inity or 0;mul=mul or 1;add=add or 0;

	return DoubleWell:MultiNew{2,reset,ratex,ratey,f,w,delta,initx,inity}:madd(mul,add)

end

XLine=UGen:new{name='XLine'}

function XLine.kr(start,end_a,dur,mul,add,doneAction)

	start=start or 1;end_a=end_a or 2;dur=dur or 1;mul=mul or 1;add=add or 0;doneAction=doneAction or 0;

	return XLine:MultiNew{1,start,end_a,dur,doneAction}:madd(mul,add)

end

function XLine.ar(start,end_a,dur,mul,add,doneAction)

	start=start or 1;end_a=end_a or 2;dur=dur or 1;mul=mul or 1;add=add or 0;doneAction=doneAction or 0;

	return XLine:MultiNew{2,start,end_a,dur,doneAction}:madd(mul,add)

end

Vibrato=UGen:new{name='Vibrato'}

function Vibrato.kr(freq,rate,depth,delay,onset,rateVariation,depthVariation,iphase)

	freq=freq or 440;rate=rate or 6;depth=depth or 0.02;delay=delay or 0;onset=onset or 0;rateVariation=rateVariation or 0.04;depthVariation=depthVariation or 0.1;iphase=iphase or 0;

	return Vibrato:MultiNew{1,freq,rate,depth,delay,onset,rateVariation,depthVariation,iphase}

end

function Vibrato.ar(freq,rate,depth,delay,onset,rateVariation,depthVariation,iphase)

	freq=freq or 440;rate=rate or 6;depth=depth or 0.02;delay=delay or 0;onset=onset or 0;rateVariation=rateVariation or 0.04;depthVariation=depthVariation or 0.1;iphase=iphase or 0;

	return Vibrato:MultiNew{2,freq,rate,depth,delay,onset,rateVariation,depthVariation,iphase}

end

AY=UGen:new{name='AY'}

function AY.ar(tonea,toneb,tonec,noise,control,vola,volb,volc,envfreq,envstyle,chiptype,mul,add)

	tonea=tonea or 1777;toneb=toneb or 1666;tonec=tonec or 1555;noise=noise or 1;control=control or 7;vola=vola or 15;volb=volb or 15;volc=volc or 15;envfreq=envfreq or 4;envstyle=envstyle or 1;chiptype=chiptype or 0;mul=mul or 1;add=add or 0;

	return AY:MultiNew{2,tonea,toneb,tonec,noise,control,vola,volb,volc,envfreq,envstyle,chiptype}:madd(mul,add)

end

Formant=UGen:new{name='Formant'}

function Formant.ar(fundfreq,formfreq,bwfreq,mul,add)

	fundfreq=fundfreq or 440;formfreq=formfreq or 1760;bwfreq=bwfreq or 880;mul=mul or 1;add=add or 0;

	return Formant:MultiNew{2,fundfreq,formfreq,bwfreq}:madd(mul,add)

end

PV_MagMinus=UGen:new{name='PV_MagMinus'}

RMEQSuite=UGen:new{name='RMEQSuite'}

BLBufRd=UGen:new{name='BLBufRd'}

function BLBufRd.kr(bufnum,phase,ratio)

	bufnum=bufnum or 0;phase=phase or 0;ratio=ratio or 1;

	return BLBufRd:MultiNew{1,bufnum,phase,ratio}

end

function BLBufRd.ar(bufnum,phase,ratio)

	bufnum=bufnum or 0;phase=phase or 0;ratio=ratio or 1;

	return BLBufRd:MultiNew{2,bufnum,phase,ratio}

end

OnsetsDS=UGen:new{name='OnsetsDS'}

function OnsetsDS.kr(in_a,fftbuf,trackbuf,thresh,type,extchain,relaxtime,floor,smear,mingap,medianspan)

	thresh=thresh or 0.5;type=type or 'power';extchain=extchain or false;relaxtime=relaxtime or 0.1;floor=floor or 0.1;smear=smear or 0;mingap=mingap or 0.05;medianspan=medianspan or 11;

	return OnsetsDS:MultiNew{1,in_a,fftbuf,trackbuf,thresh,type,extchain,relaxtime,floor,smear,mingap,medianspan}

end

StkFlute=UGen:new{name='StkFlute'}

function StkFlute.kr(freq,jetDelay,noisegain,jetRatio,mul,add)

	freq=freq or 220;jetDelay=jetDelay or 49;noisegain=noisegain or 0.15;jetRatio=jetRatio or 0.32;mul=mul or 1;add=add or 0;

	return StkFlute:MultiNew{1,freq,jetDelay,noisegain,jetRatio}:madd(mul,add)

end

function StkFlute.ar(freq,jetDelay,noisegain,jetRatio,mul,add)

	freq=freq or 440;jetDelay=jetDelay or 49;noisegain=noisegain or 0.15;jetRatio=jetRatio or 0.32;mul=mul or 1;add=add or 0;

	return StkFlute:MultiNew{2,freq,jetDelay,noisegain,jetRatio}:madd(mul,add)

end

TIRand=UGen:new{name='TIRand'}

function TIRand.kr(lo,hi,trig)

	lo=lo or 0;hi=hi or 127;trig=trig or 0;

	return TIRand:MultiNew{1,lo,hi,trig}

end

function TIRand.ar(lo,hi,trig)

	lo=lo or 0;hi=hi or 127;trig=trig or 0;

	return TIRand:MultiNew{2,lo,hi,trig}

end

DemandEnvGen=UGen:new{name='DemandEnvGen'}

function DemandEnvGen.kr(level,dur,shape,curve,gate,reset,levelScale,levelBias,timeScale,doneAction)

	shape=shape or 1;curve=curve or 0;gate=gate or 1;reset=reset or 1;levelScale=levelScale or 1;levelBias=levelBias or 0;timeScale=timeScale or 1;doneAction=doneAction or 0;

	return DemandEnvGen:MultiNew{1,level,dur,shape,curve,gate,reset,levelScale,levelBias,timeScale,doneAction}

end

function DemandEnvGen.ar(level,dur,shape,curve,gate,reset,levelScale,levelBias,timeScale,doneAction)

	shape=shape or 1;curve=curve or 0;gate=gate or 1;reset=reset or 1;levelScale=levelScale or 1;levelBias=levelBias or 0;timeScale=timeScale or 1;doneAction=doneAction or 0;

	return DemandEnvGen:MultiNew{2,level,dur,shape,curve,gate,reset,levelScale,levelBias,timeScale,doneAction}

end

A2K=UGen:new{name='A2K'}

function A2K.kr(in_a)

	in_a=in_a or 0;

	return A2K:MultiNew{1,in_a}

end

SmoothDecimator=UGen:new{name='SmoothDecimator'}

function SmoothDecimator.ar(in_a,rate,smoothing,mul,add)

	rate=rate or 44100;smoothing=smoothing or 0.5;mul=mul or 1;add=add or 0;

	return SmoothDecimator:MultiNew{2,in_a,rate,smoothing}:madd(mul,add)

end

SoftClipper4=UGen:new{name='SoftClipper4'}

function SoftClipper4.ar(in_a)

		return SoftClipper4:MultiNew{2,in_a}

end

TRand=UGen:new{name='TRand'}

function TRand.kr(lo,hi,trig)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;

	return TRand:MultiNew{1,lo,hi,trig}

end

function TRand.ar(lo,hi,trig)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;

	return TRand:MultiNew{2,lo,hi,trig}

end

GbmanTrig=UGen:new{name='GbmanTrig'}

function GbmanTrig.kr(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return GbmanTrig:MultiNew{1,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

function GbmanTrig.ar(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 5;maxfreq=maxfreq or 10;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return GbmanTrig:MultiNew{2,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

WAmp=UGen:new{name='WAmp'}

function WAmp.kr(in_a,winSize)

	in_a=in_a or 0;winSize=winSize or 0.1;

	return WAmp:MultiNew{1,in_a,winSize}

end

BMoog=UGen:new{name='BMoog'}

function BMoog.ar(in_a,freq,q,mode,saturation,mul,add)

	freq=freq or 440;q=q or 0.2;mode=mode or 0;saturation=saturation or 0.95;mul=mul or 1;add=add or 0;

	return BMoog:MultiNew{2,in_a,freq,q,mode,saturation}:madd(mul,add)

end

PulseDivider=UGen:new{name='PulseDivider'}

function PulseDivider.kr(trig,div,start)

	trig=trig or 0;div=div or 2;start=start or 0;

	return PulseDivider:MultiNew{1,trig,div,start}

end

function PulseDivider.ar(trig,div,start)

	trig=trig or 0;div=div or 2;start=start or 0;

	return PulseDivider:MultiNew{2,trig,div,start}

end

FreeSelfWhenDone=UGen:new{name='FreeSelfWhenDone'}

function FreeSelfWhenDone.kr(src)

		return FreeSelfWhenDone:MultiNew{1,src}

end

Klang=UGen:new{name='Klang'}

function Klang.ar(specificationsArrayRef,freqscale,freqoffset)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;

	return Klang:MultiNew{2,specificationsArrayRef,freqscale,freqoffset}

end

RecordBuf=UGen:new{name='RecordBuf'}

function RecordBuf.kr(inputArray,bufnum,offset,recLevel,preLevel,run,loop,trigger,doneAction)

	bufnum=bufnum or 0;offset=offset or 0;recLevel=recLevel or 1;preLevel=preLevel or 0;run=run or 1;loop=loop or 1;trigger=trigger or 1;doneAction=doneAction or 0;

	return RecordBuf:MultiNew{1,inputArray,bufnum,offset,recLevel,preLevel,run,loop,trigger,doneAction}

end

function RecordBuf.ar(inputArray,bufnum,offset,recLevel,preLevel,run,loop,trigger,doneAction)

	bufnum=bufnum or 0;offset=offset or 0;recLevel=recLevel or 1;preLevel=preLevel or 0;run=run or 1;loop=loop or 1;trigger=trigger or 1;doneAction=doneAction or 0;

	return RecordBuf:MultiNew{2,inputArray,bufnum,offset,recLevel,preLevel,run,loop,trigger,doneAction}

end

IRand=UGen:new{name='IRand'}

DoubleNestedAllpassN=UGen:new{name='DoubleNestedAllpassN'}

function DoubleNestedAllpassN.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3,mul,add)

	maxdelay1=maxdelay1 or 0.0047;delay1=delay1 or 0.0047;gain1=gain1 or 0.15;maxdelay2=maxdelay2 or 0.022;delay2=delay2 or 0.022;gain2=gain2 or 0.25;maxdelay3=maxdelay3 or 0.0083;delay3=delay3 or 0.0083;gain3=gain3 or 0.3;mul=mul or 1;add=add or 0;

	return DoubleNestedAllpassN:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3}:madd(mul,add)

end

Lorenz2DN=UGen:new{name='Lorenz2DN'}

function Lorenz2DN.kr(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DN:MultiNew{1,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

function Lorenz2DN.ar(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DN:MultiNew{2,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

Fhn2DN=UGen:new{name='Fhn2DN'}

function Fhn2DN.kr(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DN:MultiNew{1,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

function Fhn2DN.ar(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DN:MultiNew{2,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

Normalizer=UGen:new{name='Normalizer'}

function Normalizer.ar(in_a,level,dur)

	in_a=in_a or 0;level=level or 1;dur=dur or 0.01;

	return Normalizer:MultiNew{2,in_a,level,dur}

end

DoubleWell3=UGen:new{name='DoubleWell3'}

function DoubleWell3.ar(reset,rate,f,delta,initx,inity,mul,add)

	reset=reset or 0;rate=rate or 0.01;f=f or 0;delta=delta or 0.25;initx=initx or 0;inity=inity or 0;mul=mul or 1;add=add or 0;

	return DoubleWell3:MultiNew{2,reset,rate,f,delta,initx,inity}:madd(mul,add)

end

Summer=UGen:new{name='Summer'}

function Summer.kr(trig,step,reset,resetval)

	trig=trig or 0;step=step or 1;reset=reset or 0;resetval=resetval or 0;

	return Summer:MultiNew{1,trig,step,reset,resetval}

end

function Summer.ar(trig,step,reset,resetval)

	trig=trig or 0;step=step or 1;reset=reset or 0;resetval=resetval or 0;

	return Summer:MultiNew{2,trig,step,reset,resetval}

end

Dgauss=UGen:new{name='Dgauss'}

AudioMSG=UGen:new{name='AudioMSG'}

function AudioMSG.ar(in_a,index,mul,add)

	index=index or 0;mul=mul or 1;add=add or 0;

	return AudioMSG:MultiNew{2,in_a,index}:madd(mul,add)

end

Blip=UGen:new{name='Blip'}

function Blip.kr(freq,numharm,mul,add)

	freq=freq or 440;numharm=numharm or 200;mul=mul or 1;add=add or 0;

	return Blip:MultiNew{1,freq,numharm}:madd(mul,add)

end

function Blip.ar(freq,numharm,mul,add)

	freq=freq or 440;numharm=numharm or 200;mul=mul or 1;add=add or 0;

	return Blip:MultiNew{2,freq,numharm}:madd(mul,add)

end

SoftClipAmp4=UGen:new{name='SoftClipAmp4'}

function SoftClipAmp4.ar(in_a,pregain,mul,add)

	pregain=pregain or 1;mul=mul or 1;add=add or 0;

	return SoftClipAmp4:MultiNew{2,in_a,pregain}:madd(mul,add)

end

PauseSelfWhenDone=UGen:new{name='PauseSelfWhenDone'}

function PauseSelfWhenDone.kr(src)

		return PauseSelfWhenDone:MultiNew{1,src}

end

PartConv=UGen:new{name='PartConv'}

function PartConv.ar(in_a,fftsize,irbufnum,mul,add)

	mul=mul or 1;add=add or 0;

	return PartConv:MultiNew{2,in_a,fftsize,irbufnum}:madd(mul,add)

end

Perlin3=UGen:new{name='Perlin3'}

function Perlin3.kr(x,y,z)

	x=x or 0;y=y or 0;z=z or 0;

	return Perlin3:MultiNew{1,x,y,z}

end

function Perlin3.ar(x,y,z)

	x=x or 0;y=y or 0;z=z or 0;

	return Perlin3:MultiNew{2,x,y,z}

end

TwoTube=UGen:new{name='TwoTube'}

function TwoTube.ar(input,k,loss,d1length,d2length,mul,add)

	input=input or 0;k=k or 0.01;loss=loss or 1;d1length=d1length or 100;d2length=d2length or 100;mul=mul or 1;add=add or 0;

	return TwoTube:MultiNew{2,input,k,loss,d1length,d2length}:madd(mul,add)

end

Gendy1=UGen:new{name='Gendy1'}

function Gendy1.kr(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 20;maxfreq=maxfreq or 1000;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy1:MultiNew{1,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

function Gendy1.ar(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 440;maxfreq=maxfreq or 660;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy1:MultiNew{2,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

OSTrunc8=UGen:new{name='OSTrunc8'}

function OSTrunc8.ar(in_a,quant)

	quant=quant or 0.5;

	return OSTrunc8:MultiNew{2,in_a,quant}

end

StkPluck=UGen:new{name='StkPluck'}

function StkPluck.kr(freq,decay,mul,add)

	freq=freq or 440;decay=decay or 0.99;mul=mul or 1;add=add or 0;

	return StkPluck:MultiNew{1,freq,decay}:madd(mul,add)

end

function StkPluck.ar(freq,decay,mul,add)

	freq=freq or 440;decay=decay or 0.99;mul=mul or 1;add=add or 0;

	return StkPluck:MultiNew{2,freq,decay}:madd(mul,add)

end

OSWrap4=UGen:new{name='OSWrap4'}

function OSWrap4.ar(in_a,lo,hi)

		return OSWrap4:MultiNew{2,in_a,lo,hi}

end

SortBuf=UGen:new{name='SortBuf'}

function SortBuf.ar(bufnum,sortrate,reset)

	bufnum=bufnum or 0;sortrate=sortrate or 10;reset=reset or 0;

	return SortBuf:MultiNew{2,bufnum,sortrate,reset}

end

Done=UGen:new{name='Done'}

function Done.kr(src)

		return Done:MultiNew{1,src}

end

Saw=UGen:new{name='Saw'}

function Saw.kr(freq,mul,add)

	freq=freq or 440;mul=mul or 1;add=add or 0;

	return Saw:MultiNew{1,freq}:madd(mul,add)

end

function Saw.ar(freq,mul,add)

	freq=freq or 440;mul=mul or 1;add=add or 0;

	return Saw:MultiNew{2,freq}:madd(mul,add)

end

Phasor=UGen:new{name='Phasor'}

function Phasor.kr(trig,rate,start,end_a,resetPos)

	trig=trig or 0;rate=rate or 1;start=start or 0;end_a=end_a or 1;resetPos=resetPos or 0;

	return Phasor:MultiNew{1,trig,rate,start,end_a,resetPos}

end

function Phasor.ar(trig,rate,start,end_a,resetPos)

	trig=trig or 0;rate=rate or 1;start=start or 0;end_a=end_a or 1;resetPos=resetPos or 0;

	return Phasor:MultiNew{2,trig,rate,start,end_a,resetPos}

end

SkipNeedle=UGen:new{name='SkipNeedle'}

function SkipNeedle.ar(range,rate,offset)

	range=range or 44100;rate=rate or 10;offset=offset or 0;

	return SkipNeedle:MultiNew{2,range,rate,offset}

end

DynKlang=UGen:new{name='DynKlang'}

function DynKlang.kr(specificationsArrayRef,freqscale,freqoffset)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;

	return DynKlang:MultiNew{1,specificationsArrayRef,freqscale,freqoffset}

end

function DynKlang.ar(specificationsArrayRef,freqscale,freqoffset)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;

	return DynKlang:MultiNew{2,specificationsArrayRef,freqscale,freqoffset}

end

CombN=UGen:new{name='CombN'}

function CombN.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombN:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function CombN.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombN:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

Klank=UGen:new{name='Klank'}

function Klank.ar(specificationsArrayRef,input,freqscale,freqoffset,decayscale)

	freqscale=freqscale or 1;freqoffset=freqoffset or 0;decayscale=decayscale or 1;

	return Klank:MultiNew{2,specificationsArrayRef,input,freqscale,freqoffset,decayscale}

end

VOsc=UGen:new{name='VOsc'}

function VOsc.kr(bufpos,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return VOsc:MultiNew{1,bufpos,freq,phase}:madd(mul,add)

end

function VOsc.ar(bufpos,freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return VOsc:MultiNew{2,bufpos,freq,phase}:madd(mul,add)

end

Convolution2L=UGen:new{name='Convolution2L'}

function Convolution2L.ar(in_a,kernel,trigger,framesize,crossfade,mul,add)

	trigger=trigger or 0;framesize=framesize or 2048;crossfade=crossfade or 1;mul=mul or 1;add=add or 0;

	return Convolution2L:MultiNew{2,in_a,kernel,trigger,framesize,crossfade}:madd(mul,add)

end

SineShaper=UGen:new{name='SineShaper'}

function SineShaper.ar(in_a,limit,mul,add)

	limit=limit or 1;mul=mul or 1;add=add or 0;

	return SineShaper:MultiNew{2,in_a,limit}:madd(mul,add)

end

WalshHadamard=UGen:new{name='WalshHadamard'}

function WalshHadamard.ar(input,which,mul,add)

	which=which or 0;mul=mul or 1;add=add or 0;

	return WalshHadamard:MultiNew{2,input,which}:madd(mul,add)

end

BufCombN=UGen:new{name='BufCombN'}

function BufCombN.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufCombN:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

NL2=UGen:new{name='NL2'}

function NL2.ar(input,bufnum,maxsizea,maxsizeb,guard1,guard2,mul,add)

	bufnum=bufnum or 0;maxsizea=maxsizea or 10;maxsizeb=maxsizeb or 10;guard1=guard1 or 1000;guard2=guard2 or 100;mul=mul or 1;add=add or 0;

	return NL2:MultiNew{2,input,bufnum,maxsizea,maxsizeb,guard1,guard2}:madd(mul,add)

end

Stepper=UGen:new{name='Stepper'}

function Stepper.kr(trig,reset,min,max,step,resetval)

	trig=trig or 0;reset=reset or 0;min=min or 0;max=max or 7;step=step or 1;

	return Stepper:MultiNew{1,trig,reset,min,max,step,resetval}

end

function Stepper.ar(trig,reset,min,max,step,resetval)

	trig=trig or 0;reset=reset or 0;min=min or 0;max=max or 7;step=step or 1;

	return Stepper:MultiNew{2,trig,reset,min,max,step,resetval}

end

DriveNoise=UGen:new{name='DriveNoise'}

function DriveNoise.ar(in_a,amount,multi)

	amount=amount or 1;multi=multi or 5;

	return DriveNoise:MultiNew{2,in_a,amount,multi}

end

StkVoicForm=UGen:new{name='StkVoicForm'}

function StkVoicForm.kr(freq,vuvmix,vowelphon,vibfreq,vibgain,loudness,trig,mul,add)

	freq=freq or 440;vuvmix=vuvmix or 64;vowelphon=vowelphon or 64;vibfreq=vibfreq or 64;vibgain=vibgain or 20;loudness=loudness or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkVoicForm:MultiNew{1,freq,vuvmix,vowelphon,vibfreq,vibgain,loudness,trig}:madd(mul,add)

end

function StkVoicForm.ar(freq,vuvmix,vowelphon,vibfreq,vibgain,loudness,trig,mul,add)

	freq=freq or 440;vuvmix=vuvmix or 64;vowelphon=vowelphon or 64;vibfreq=vibfreq or 64;vibgain=vibgain or 20;loudness=loudness or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkVoicForm:MultiNew{2,freq,vuvmix,vowelphon,vibfreq,vibgain,loudness,trig}:madd(mul,add)

end

SinTone=UGen:new{name='SinTone'}

function SinTone.ar(freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return SinTone:MultiNew{2,freq,phase}:madd(mul,add)

end

DiskOut=UGen:new{name='DiskOut'}

function DiskOut.ar(bufnum,channelsArray)

		return DiskOut:MultiNew{2,bufnum,channelsArray}

end

Convolution3=UGen:new{name='Convolution3'}

function Convolution3.kr(in_a,kernel,trigger,framesize,mul,add)

	trigger=trigger or 0;framesize=framesize or 2048;mul=mul or 1;add=add or 0;

	return Convolution3:MultiNew{1,in_a,kernel,trigger,framesize}:madd(mul,add)

end

function Convolution3.ar(in_a,kernel,trigger,framesize,mul,add)

	trigger=trigger or 0;framesize=framesize or 2048;mul=mul or 1;add=add or 0;

	return Convolution3:MultiNew{2,in_a,kernel,trigger,framesize}:madd(mul,add)

end

InRange=UGen:new{name='InRange'}

function InRange.ir(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return InRange:MultiNew{0,in_a,lo,hi}

end

function InRange.kr(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return InRange:MultiNew{1,in_a,lo,hi}

end

function InRange.ar(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return InRange:MultiNew{2,in_a,lo,hi}

end

ListTrig2=UGen:new{name='ListTrig2'}

function ListTrig2.kr(bufnum,reset,numframes)

	bufnum=bufnum or 0;reset=reset or 0;

	return ListTrig2:MultiNew{1,bufnum,reset,numframes}

end

LinXFade2=UGen:new{name='LinXFade2'}

function LinXFade2.kr(inA,inB,pan,level)

	inB=inB or 0;pan=pan or 0;level=level or 1;

	return LinXFade2:MultiNew{1,inA,inB,pan,level}

end

function LinXFade2.ar(inA,inB,pan,level)

	inB=inB or 0;pan=pan or 0;level=level or 1;

	return LinXFade2:MultiNew{2,inA,inB,pan,level}

end

StkBandedWG=UGen:new{name='StkBandedWG'}

function StkBandedWG.kr(freq,instr,bowpressure,bowmotion,integration,modalresonance,bowvelocity,setstriking,trig,mul,add)

	freq=freq or 440;instr=instr or 0;bowpressure=bowpressure or 0;bowmotion=bowmotion or 0;integration=integration or 0;modalresonance=modalresonance or 64;bowvelocity=bowvelocity or 0;setstriking=setstriking or 0;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkBandedWG:MultiNew{1,freq,instr,bowpressure,bowmotion,integration,modalresonance,bowvelocity,setstriking,trig}:madd(mul,add)

end

function StkBandedWG.ar(freq,instr,bowpressure,bowmotion,integration,modalresonance,bowvelocity,setstriking,trig,mul,add)

	freq=freq or 440;instr=instr or 0;bowpressure=bowpressure or 0;bowmotion=bowmotion or 0;integration=integration or 0;modalresonance=modalresonance or 64;bowvelocity=bowvelocity or 0;setstriking=setstriking or 0;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkBandedWG:MultiNew{2,freq,instr,bowpressure,bowmotion,integration,modalresonance,bowvelocity,setstriking,trig}:madd(mul,add)

end

Trig1=UGen:new{name='Trig1'}

function Trig1.kr(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return Trig1:MultiNew{1,in_a,dur}

end

function Trig1.ar(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return Trig1:MultiNew{2,in_a,dur}

end

NLFiltN=UGen:new{name='NLFiltN'}

function NLFiltN.kr(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltN:MultiNew{1,input,a,b,d,c,l}:madd(mul,add)

end

function NLFiltN.ar(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltN:MultiNew{2,input,a,b,d,c,l}:madd(mul,add)

end

FSinOsc=UGen:new{name='FSinOsc'}

function FSinOsc.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return FSinOsc:MultiNew{1,freq,iphase}:madd(mul,add)

end

function FSinOsc.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return FSinOsc:MultiNew{2,freq,iphase}:madd(mul,add)

end

Convolution=UGen:new{name='Convolution'}

function Convolution.ar(in_a,kernel,framesize,mul,add)

	framesize=framesize or 512;mul=mul or 1;add=add or 0;

	return Convolution:MultiNew{2,in_a,kernel,framesize}:madd(mul,add)

end

Amplitude=UGen:new{name='Amplitude'}

function Amplitude.kr(in_a,attackTime,releaseTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;releaseTime=releaseTime or 0.01;mul=mul or 1;add=add or 0;

	return Amplitude:MultiNew{1,in_a,attackTime,releaseTime}:madd(mul,add)

end

function Amplitude.ar(in_a,attackTime,releaseTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;releaseTime=releaseTime or 0.01;mul=mul or 1;add=add or 0;

	return Amplitude:MultiNew{2,in_a,attackTime,releaseTime}:madd(mul,add)

end

Crest=UGen:new{name='Crest'}

function Crest.kr(in_a,numsamps,gate,mul,add)

	numsamps=numsamps or 400;gate=gate or 1;mul=mul or 1;add=add or 0;

	return Crest:MultiNew{1,in_a,numsamps,gate}:madd(mul,add)

end

Timer=UGen:new{name='Timer'}

function Timer.kr(trig)

	trig=trig or 0;

	return Timer:MultiNew{1,trig}

end

function Timer.ar(trig)

	trig=trig or 0;

	return Timer:MultiNew{2,trig}

end

CombLP=UGen:new{name='CombLP'}

function CombLP.ar(in_a,gate,maxdelaytime,delaytime,decaytime,coef,mul,add)

	in_a=in_a or 0;gate=gate or 1;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return CombLP:MultiNew{2,in_a,gate,maxdelaytime,delaytime,decaytime,coef}:madd(mul,add)

end

DelayN=UGen:new{name='DelayN'}

function DelayN.kr(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayN:MultiNew{1,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

function DelayN.ar(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayN:MultiNew{2,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

AnalyseEvents2=UGen:new{name='AnalyseEvents2'}

function AnalyseEvents2.ar(in_a,bufnum,threshold,triggerid,circular,pitch)

	bufnum=bufnum or 0;threshold=threshold or 0.34;triggerid=triggerid or 101;circular=circular or 0;pitch=pitch or 0;

	return AnalyseEvents2:MultiNew{2,in_a,bufnum,threshold,triggerid,circular,pitch}

end

Impulse=UGen:new{name='Impulse'}

function Impulse.kr(freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return Impulse:MultiNew{1,freq,phase}:madd(mul,add)

end

function Impulse.ar(freq,phase,mul,add)

	freq=freq or 440;phase=phase or 0;mul=mul or 1;add=add or 0;

	return Impulse:MultiNew{2,freq,phase}:madd(mul,add)

end

DoubleWell2=UGen:new{name='DoubleWell2'}

function DoubleWell2.ar(reset,ratex,ratey,f,w,delta,initx,inity,mul,add)

	reset=reset or 0;ratex=ratex or 0.01;ratey=ratey or 0.01;f=f or 1;w=w or 0.001;delta=delta or 1;initx=initx or 0;inity=inity or 0;mul=mul or 1;add=add or 0;

	return DoubleWell2:MultiNew{2,reset,ratex,ratey,f,w,delta,initx,inity}:madd(mul,add)

end

Gbman2DN=UGen:new{name='Gbman2DN'}

function Gbman2DN.kr(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DN:MultiNew{1,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

function Gbman2DN.ar(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DN:MultiNew{2,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

EnvDetect=UGen:new{name='EnvDetect'}

function EnvDetect.ar(in_a,attack,release)

	attack=attack or 100;release=release or 0;

	return EnvDetect:MultiNew{2,in_a,attack,release}

end

MouseX=UGen:new{name='MouseX'}

function MouseX.kr(minval,maxval,warp,lag)

	minval=minval or 0;maxval=maxval or 1;warp=warp or 0;lag=lag or 0.2;

	return MouseX:MultiNew{1,minval,maxval,warp,lag}

end

TWChoose=UGen:new{name='TWChoose'}

function TWChoose.kr(trig,array,weights,normalize)

	normalize=normalize or 0;

	return TWChoose:MultiNew{1,trig,array,weights,normalize}

end

function TWChoose.ar(trig,array,weights,normalize)

	normalize=normalize or 0;

	return TWChoose:MultiNew{2,trig,array,weights,normalize}

end

PeakEQ2=UGen:new{name='PeakEQ2'}

function PeakEQ2.ar(in_a,freq,rs,db)

	freq=freq or 1200;rs=rs or 1;db=db or 0;

	return PeakEQ2:MultiNew{2,in_a,freq,rs,db}

end

Poll=UGen:new{name='Poll'}

function Poll.kr(trig,in_a,label,trigid)

	trigid=trigid or -1;

	return Poll:MultiNew{1,trig,in_a,label,trigid}

end

function Poll.ar(trig,in_a,label,trigid)

	trigid=trigid or -1;

	return Poll:MultiNew{2,trig,in_a,label,trigid}

end

SyncSaw=UGen:new{name='SyncSaw'}

function SyncSaw.kr(syncFreq,sawFreq,mul,add)

	syncFreq=syncFreq or 440;sawFreq=sawFreq or 440;mul=mul or 1;add=add or 0;

	return SyncSaw:MultiNew{1,syncFreq,sawFreq}:madd(mul,add)

end

function SyncSaw.ar(syncFreq,sawFreq,mul,add)

	syncFreq=syncFreq or 440;sawFreq=sawFreq or 440;mul=mul or 1;add=add or 0;

	return SyncSaw:MultiNew{2,syncFreq,sawFreq}:madd(mul,add)

end

RLPFD=UGen:new{name='RLPFD'}

function RLPFD.kr(in_a,ffreq,res,dist,mul,add)

	ffreq=ffreq or 440;res=res or 0;dist=dist or 0;mul=mul or 1;add=add or 0;

	return RLPFD:MultiNew{1,in_a,ffreq,res,dist}:madd(mul,add)

end

function RLPFD.ar(in_a,ffreq,res,dist,mul,add)

	ffreq=ffreq or 440;res=res or 0;dist=dist or 0;mul=mul or 1;add=add or 0;

	return RLPFD:MultiNew{2,in_a,ffreq,res,dist}:madd(mul,add)

end

FrameCompare=UGen:new{name='FrameCompare'}

function FrameCompare.kr(buffer1,buffer2,wAmount)

	wAmount=wAmount or 0.5;

	return FrameCompare:MultiNew{1,buffer1,buffer2,wAmount}

end

Decimator=UGen:new{name='Decimator'}

function Decimator.ar(in_a,rate,bits,mul,add)

	rate=rate or 44100;bits=bits or 24;mul=mul or 1;add=add or 0;

	return Decimator:MultiNew{2,in_a,rate,bits}:madd(mul,add)

end

LFBrownNoise0=UGen:new{name='LFBrownNoise0'}

function LFBrownNoise0.kr(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise0:MultiNew{1,freq,dev,dist}:madd(mul,add)

end

function LFBrownNoise0.ar(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise0:MultiNew{2,freq,dev,dist}:madd(mul,add)

end

TrigAvg=UGen:new{name='TrigAvg'}

function TrigAvg.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return TrigAvg:MultiNew{1,in_a,trig}

end

ChaosGen=UGen:new{name='ChaosGen'}

PV_SoftWipe=UGen:new{name='PV_SoftWipe'}

TGaussRand=UGen:new{name='TGaussRand'}

function TGaussRand.kr(lo,hi,trig,mul,add)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TGaussRand:MultiNew{1,lo,hi,trig}:madd(mul,add)

end

function TGaussRand.ar(lo,hi,trig,mul,add)

	lo=lo or 0;hi=hi or 1;trig=trig or 0;mul=mul or 1;add=add or 0;

	return TGaussRand:MultiNew{2,lo,hi,trig}:madd(mul,add)

end

Gendy4=UGen:new{name='Gendy4'}

function Gendy4.kr(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 20;maxfreq=maxfreq or 1000;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy4:MultiNew{1,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

function Gendy4.ar(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 440;maxfreq=maxfreq or 660;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy4:MultiNew{2,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

StkSaxofony=UGen:new{name='StkSaxofony'}

function StkSaxofony.kr(freq,reedstiffness,reedaperture,noisegain,blowposition,vibratofrequency,vibratogain,breathpressure,trig,mul,add)

	freq=freq or 220;reedstiffness=reedstiffness or 64;reedaperture=reedaperture or 64;noisegain=noisegain or 20;blowposition=blowposition or 26;vibratofrequency=vibratofrequency or 20;vibratogain=vibratogain or 20;breathpressure=breathpressure or 128;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkSaxofony:MultiNew{1,freq,reedstiffness,reedaperture,noisegain,blowposition,vibratofrequency,vibratogain,breathpressure,trig}:madd(mul,add)

end

function StkSaxofony.ar(freq,reedstiffness,reedaperture,noisegain,blowposition,vibratofrequency,vibratogain,breathpressure,trig,mul,add)

	freq=freq or 220;reedstiffness=reedstiffness or 64;reedaperture=reedaperture or 64;noisegain=noisegain or 20;blowposition=blowposition or 26;vibratofrequency=vibratofrequency or 20;vibratogain=vibratogain or 20;breathpressure=breathpressure or 128;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkSaxofony:MultiNew{2,freq,reedstiffness,reedaperture,noisegain,blowposition,vibratofrequency,vibratogain,breathpressure,trig}:madd(mul,add)

end

TWindex=UGen:new{name='TWindex'}

function TWindex.kr(in_a,array,normalize)

	normalize=normalize or 0;

	return TWindex:MultiNew{1,in_a,array,normalize}

end

function TWindex.ar(in_a,array,normalize)

	normalize=normalize or 0;

	return TWindex:MultiNew{2,in_a,array,normalize}

end

WaveletDaub=UGen:new{name='WaveletDaub'}

function WaveletDaub.ar(input,n,which,mul,add)

	n=n or 64;which=which or 0;mul=mul or 1;add=add or 0;

	return WaveletDaub:MultiNew{2,input,n,which}:madd(mul,add)

end

LFGauss=UGen:new{name='LFGauss'}

function LFGauss.kr(duration,width,iphase,loop,doneAction)

	duration=duration or 1;width=width or 0.1;iphase=iphase or 0;loop=loop or 1;doneAction=doneAction or 0;

	return LFGauss:MultiNew{1,duration,width,iphase,loop,doneAction}

end

function LFGauss.ar(duration,width,iphase,loop,doneAction)

	duration=duration or 1;width=width or 0.1;iphase=iphase or 0;loop=loop or 1;doneAction=doneAction or 0;

	return LFGauss:MultiNew{2,duration,width,iphase,loop,doneAction}

end

FFTCentroid=UGen:new{name='FFTCentroid'}

function FFTCentroid.kr(buffer)

		return FFTCentroid:MultiNew{1,buffer}

end

StkMoog=UGen:new{name='StkMoog'}

function StkMoog.kr(freq,filterQ,sweeprate,vibfreq,vibgain,gain,trig,mul,add)

	freq=freq or 440;filterQ=filterQ or 10;sweeprate=sweeprate or 20;vibfreq=vibfreq or 64;vibgain=vibgain or 0;gain=gain or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkMoog:MultiNew{1,freq,filterQ,sweeprate,vibfreq,vibgain,gain,trig}:madd(mul,add)

end

function StkMoog.ar(freq,filterQ,sweeprate,vibfreq,vibgain,gain,trig,mul,add)

	freq=freq or 440;filterQ=filterQ or 10;sweeprate=sweeprate or 20;vibfreq=vibfreq or 64;vibgain=vibgain or 0;gain=gain or 64;trig=trig or 1;mul=mul or 1;add=add or 0;

	return StkMoog:MultiNew{2,freq,filterQ,sweeprate,vibfreq,vibgain,gain,trig}:madd(mul,add)

end

FFTFlux=UGen:new{name='FFTFlux'}

function FFTFlux.kr(buffer,normalise)

	normalise=normalise or 1;

	return FFTFlux:MultiNew{1,buffer,normalise}

end

Max=UGen:new{name='Max'}

function Max.kr(in_a,numsamp)

	numsamp=numsamp or 64;

	return Max:MultiNew{1,in_a,numsamp}

end

LocalOut=Out:new{name='LocalOut'}

function LocalOut.kr(channelsArray)

		return LocalOut:donew{1,channelsArray}

end

function LocalOut.ar(channelsArray)

		return LocalOut:donew{2,channelsArray}

end

XOut=Out:new{name='XOut'}

function XOut.kr(bus,xfade,channelsArray)

		return XOut:donew{1,bus,xfade,channelsArray}

end

function XOut.ar(bus,xfade,channelsArray)

		return XOut:donew{2,bus,xfade,channelsArray}

end

SharedOut=Out:new{name='SharedOut'}

function SharedOut.kr(bus,channelsArray)

		return SharedOut:donew{1,bus,channelsArray}

end

OffsetOut=Out:new{name='OffsetOut'}

function OffsetOut.kr()

		return OffsetOut:donew{1}

end

function OffsetOut.ar(bus,channelsArray)

		return OffsetOut:donew{2,bus,channelsArray}

end

ReplaceOut=Out:new{name='ReplaceOut'}

function ReplaceOut.kr(bus,channelsArray)

		return ReplaceOut:donew{1,bus,channelsArray}

end

function ReplaceOut.ar(bus,channelsArray)

		return ReplaceOut:donew{2,bus,channelsArray}

end

LFTri=UGen:new{name='LFTri'}

function LFTri.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFTri:MultiNew{1,freq,iphase}:madd(mul,add)

end

function LFTri.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFTri:MultiNew{2,freq,iphase}:madd(mul,add)

end

LFCub=UGen:new{name='LFCub'}

function LFCub.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFCub:MultiNew{1,freq,iphase}:madd(mul,add)

end

function LFCub.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFCub:MultiNew{2,freq,iphase}:madd(mul,add)

end

LFPar=UGen:new{name='LFPar'}

function LFPar.kr(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFPar:MultiNew{1,freq,iphase}:madd(mul,add)

end

function LFPar.ar(freq,iphase,mul,add)

	freq=freq or 440;iphase=iphase or 0;mul=mul or 1;add=add or 0;

	return LFPar:MultiNew{2,freq,iphase}:madd(mul,add)

end

AtsNoiSynth=UGen:new{name='AtsNoiSynth'}

function AtsNoiSynth.ar(atsbuffer,numPartials,partialStart,partialSkip,filePointer,sinePct,noisePct,freqMul,freqAdd,numBands,bandStart,bandSkip,mul,add)

	numPartials=numPartials or 0;partialStart=partialStart or 0;partialSkip=partialSkip or 1;filePointer=filePointer or 0;sinePct=sinePct or 1;noisePct=noisePct or 1;freqMul=freqMul or 1;freqAdd=freqAdd or 0;numBands=numBands or 25;bandStart=bandStart or 0;bandSkip=bandSkip or 1;mul=mul or 1;add=add or 0;

	return AtsNoiSynth:MultiNew{2,atsbuffer,numPartials,partialStart,partialSkip,filePointer,sinePct,noisePct,freqMul,freqAdd,numBands,bandStart,bandSkip}:madd(mul,add)

end

AtsNoise=UGen:new{name='AtsNoise'}

function AtsNoise.kr(atsbuffer,bandNum,filePointer,mul,add)

	bandNum=bandNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsNoise:MultiNew{1,atsbuffer,bandNum,filePointer}:madd(mul,add)

end

function AtsNoise.ar(atsbuffer,bandNum,filePointer,mul,add)

	bandNum=bandNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsNoise:MultiNew{2,atsbuffer,bandNum,filePointer}:madd(mul,add)

end

AtsSynth=UGen:new{name='AtsSynth'}

function AtsSynth.ar(atsbuffer,numPartials,partialStart,partialSkip,filePointer,freqMul,freqAdd,mul,add)

	numPartials=numPartials or 0;partialStart=partialStart or 0;partialSkip=partialSkip or 1;filePointer=filePointer or 0;freqMul=freqMul or 1;freqAdd=freqAdd or 0;mul=mul or 1;add=add or 0;

	return AtsSynth:MultiNew{2,atsbuffer,numPartials,partialStart,partialSkip,filePointer,freqMul,freqAdd}:madd(mul,add)

end

AtsAmp=UGen:new{name='AtsAmp'}

function AtsAmp.kr(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsAmp:MultiNew{1,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

function AtsAmp.ar(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsAmp:MultiNew{2,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

AtsBand=UGen:new{name='AtsBand'}

function AtsBand.ar(atsbuffer,band,filePointer,mul,add)

	filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsBand:MultiNew{2,atsbuffer,band,filePointer}:madd(mul,add)

end

AtsFreq=UGen:new{name='AtsFreq'}

function AtsFreq.kr(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsFreq:MultiNew{1,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

function AtsFreq.ar(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsFreq:MultiNew{2,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

AtsPartial=UGen:new{name='AtsPartial'}

function AtsPartial.ar(atsbuffer,partial,filePointer,freqMul,freqAdd,mul,add)

	filePointer=filePointer or 0;freqMul=freqMul or 1;freqAdd=freqAdd or 0;mul=mul or 1;add=add or 0;

	return AtsPartial:MultiNew{2,atsbuffer,partial,filePointer,freqMul,freqAdd}:madd(mul,add)

end

SetResetFF=UGen:new{name='SetResetFF'}

function SetResetFF.kr(trig,reset)

	trig=trig or 0;reset=reset or 0;

	return SetResetFF:MultiNew{1,trig,reset}

end

function SetResetFF.ar(trig,reset)

	trig=trig or 0;reset=reset or 0;

	return SetResetFF:MultiNew{2,trig,reset}

end

RadiansPerSample=UGen:new{name='RadiansPerSample'}

function RadiansPerSample.ir()

		return RadiansPerSample:MultiNew{0}

end

NumRunningSynths=UGen:new{name='NumRunningSynths'}

function NumRunningSynths.ir()

		return NumRunningSynths:MultiNew{0}

end

function NumRunningSynths.kr()

		return NumRunningSynths:MultiNew{1}

end

SampleDur=UGen:new{name='SampleDur'}

function SampleDur.ir()

		return SampleDur:MultiNew{0}

end

NumBuffers=UGen:new{name='NumBuffers'}

function NumBuffers.ir()

		return NumBuffers:MultiNew{0}

end

ControlDur=UGen:new{name='ControlDur'}

function ControlDur.ir()

		return ControlDur:MultiNew{0}

end

ControlRate=UGen:new{name='ControlRate'}

function ControlRate.ir()

		return ControlRate:MultiNew{0}

end

NumInputBuses=UGen:new{name='NumInputBuses'}

function NumInputBuses.ir()

		return NumInputBuses:MultiNew{0}

end

NumControlBuses=UGen:new{name='NumControlBuses'}

function NumControlBuses.ir()

		return NumControlBuses:MultiNew{0}

end

SubsampleOffset=UGen:new{name='SubsampleOffset'}

function SubsampleOffset.ir()

		return SubsampleOffset:MultiNew{0}

end

NumAudioBuses=UGen:new{name='NumAudioBuses'}

function NumAudioBuses.ir()

		return NumAudioBuses:MultiNew{0}

end

SampleRate=UGen:new{name='SampleRate'}

function SampleRate.ir()

		return SampleRate:MultiNew{0}

end

NumOutputBuses=UGen:new{name='NumOutputBuses'}

function NumOutputBuses.ir()

		return NumOutputBuses:MultiNew{0}

end

SendReply=UGen:new{name='SendReply'}

function SendReply.kr(trig,cmdName,values,replyID)

	trig=trig or 0;cmdName=cmdName or '/reply';replyID=replyID or -1;

	return SendReply:MultiNew{1,trig,cmdName,values,replyID}

end

function SendReply.ar(trig,cmdName,values,replyID)

	trig=trig or 0;cmdName=cmdName or '/reply';replyID=replyID or -1;

	return SendReply:MultiNew{2,trig,cmdName,values,replyID}

end

PV_CommonMul=UGen:new{name='PV_CommonMul'}

BufChannels=UGen:new{name='BufChannels'}

function BufChannels.ir(bufnum)

		return BufChannels:MultiNew{0,bufnum}

end

function BufChannels.kr(bufnum)

		return BufChannels:MultiNew{1,bufnum}

end

BufFrames=UGen:new{name='BufFrames'}

function BufFrames.ir(bufnum)

		return BufFrames:MultiNew{0,bufnum}

end

function BufFrames.kr(bufnum)

		return BufFrames:MultiNew{1,bufnum}

end

BufDur=UGen:new{name='BufDur'}

function BufDur.ir(bufnum)

		return BufDur:MultiNew{0,bufnum}

end

function BufDur.kr(bufnum)

		return BufDur:MultiNew{1,bufnum}

end

BufSamples=UGen:new{name='BufSamples'}

function BufSamples.ir(bufnum)

		return BufSamples:MultiNew{0,bufnum}

end

function BufSamples.kr(bufnum)

		return BufSamples:MultiNew{1,bufnum}

end

BufSampleRate=UGen:new{name='BufSampleRate'}

function BufSampleRate.ir(bufnum)

		return BufSampleRate:MultiNew{0,bufnum}

end

function BufSampleRate.kr(bufnum)

		return BufSampleRate:MultiNew{1,bufnum}

end

BufRateScale=UGen:new{name='BufRateScale'}

function BufRateScale.ir(bufnum)

		return BufRateScale:MultiNew{0,bufnum}

end

function BufRateScale.kr(bufnum)

		return BufRateScale:MultiNew{1,bufnum}

end

Latoocarfian2DC=UGen:new{name='Latoocarfian2DC'}

function Latoocarfian2DC.kr(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DC:MultiNew{1,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

function Latoocarfian2DC.ar(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DC:MultiNew{2,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

Latoocarfian2DL=UGen:new{name='Latoocarfian2DL'}

function Latoocarfian2DL.kr(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DL:MultiNew{1,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

function Latoocarfian2DL.ar(minfreq,maxfreq,a,b,c,d,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;x0=x0 or 0.34082301375036;y0=y0 or -0.38270086971332;mul=mul or 1;add=add or 0;

	return Latoocarfian2DL:MultiNew{2,minfreq,maxfreq,a,b,c,d,x0,y0}:madd(mul,add)

end

ChuaL=UGen:new{name='ChuaL'}

function ChuaL.ar(freq,a,b,c,d,rr,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a=a or 0.3286;b=b or 0.9336;c=c or -0.8126;d=d or 0.399;h=h or 0.05;xi=xi or 0.1;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return ChuaL:MultiNew{2,freq,a,b,c,d,rr,h,xi,yi,zi}:madd(mul,add)

end

RosslerResL=UGen:new{name='RosslerResL'}

function RosslerResL.ar(in_a,stiff,freq,a,b,c,h,xi,yi,zi,mul,add)

	stiff=stiff or 1;freq=freq or 22050;a=a or 0.2;b=b or 0.2;c=c or 5.7;h=h or 0.05;xi=xi or 0.1;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return RosslerResL:MultiNew{2,in_a,stiff,freq,a,b,c,h,xi,yi,zi}:madd(mul,add)

end

Gate=UGen:new{name='Gate'}

function Gate.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Gate:MultiNew{1,in_a,trig}

end

function Gate.ar(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return Gate:MultiNew{2,in_a,trig}

end

T2A=UGen:new{name='T2A'}

function T2A.ar(in_a,offset)

	in_a=in_a or 0;offset=offset or 0;

	return T2A:MultiNew{2,in_a,offset}

end

AmpCompA=UGen:new{name='AmpCompA'}

function AmpCompA.ir(freq,root,minAmp,rootAmp)

	freq=freq or 1000;root=root or 0;minAmp=minAmp or 0.32;rootAmp=rootAmp or 1;

	return AmpCompA:MultiNew{0,freq,root,minAmp,rootAmp}

end

function AmpCompA.kr(freq,root,minAmp,rootAmp)

	freq=freq or 1000;root=root or 0;minAmp=minAmp or 0.32;rootAmp=rootAmp or 1;

	return AmpCompA:MultiNew{1,freq,root,minAmp,rootAmp}

end

function AmpCompA.ar(freq,root,minAmp,rootAmp)

	freq=freq or 1000;root=root or 0;minAmp=minAmp or 0.32;rootAmp=rootAmp or 1;

	return AmpCompA:MultiNew{2,freq,root,minAmp,rootAmp}

end

Shaper=UGen:new{name='Shaper'}

function Shaper.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Shaper:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function Shaper.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Shaper:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

DetectIndex=UGen:new{name='DetectIndex'}

function DetectIndex.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return DetectIndex:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function DetectIndex.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return DetectIndex:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

WrapIndex=UGen:new{name='WrapIndex'}

function WrapIndex.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return WrapIndex:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function WrapIndex.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return WrapIndex:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

IndexInBetween=UGen:new{name='IndexInBetween'}

function IndexInBetween.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return IndexInBetween:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function IndexInBetween.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return IndexInBetween:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

IndexL=UGen:new{name='IndexL'}

function IndexL.kr(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return IndexL:MultiNew{1,bufnum,in_a}:madd(mul,add)

end

function IndexL.ar(bufnum,in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return IndexL:MultiNew{2,bufnum,in_a}:madd(mul,add)

end

BFDecode1=UGen:new{name='BFDecode1'}

function BFDecode1.ar(w,x,y,z,azimuth,elevation,wComp,mul,add)

	azimuth=azimuth or 0;elevation=elevation or 0;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return BFDecode1:MultiNew{2,w,x,y,z,azimuth,elevation,wComp}:madd(mul,add)

end

FMHDecode1=UGen:new{name='FMHDecode1'}

function FMHDecode1.ar(w,x,y,z,r,s,t,u,v,azimuth,elevation,mul,add)

	azimuth=azimuth or 0;elevation=elevation or 0;mul=mul or 1;add=add or 0;

	return FMHDecode1:MultiNew{2,w,x,y,z,r,s,t,u,v,azimuth,elevation}:madd(mul,add)

end

RunningMin=UGen:new{name='RunningMin'}

function RunningMin.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return RunningMin:MultiNew{1,in_a,trig}

end

function RunningMin.ar(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return RunningMin:MultiNew{2,in_a,trig}

end

RunningMax=UGen:new{name='RunningMax'}

function RunningMax.kr(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return RunningMax:MultiNew{1,in_a,trig}

end

function RunningMax.ar(in_a,trig)

	in_a=in_a or 0;trig=trig or 0;

	return RunningMax:MultiNew{2,in_a,trig}

end

SinGrain=UGen:new{name='SinGrain'}

function SinGrain.ar(trigger,dur,freq,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;mul=mul or 1;add=add or 0;

	return SinGrain:MultiNew{2,trigger,dur,freq}:madd(mul,add)

end

InGrain=UGen:new{name='InGrain'}

function InGrain.ar(trigger,dur,in_a,mul,add)

	trigger=trigger or 0;dur=dur or 1;mul=mul or 1;add=add or 0;

	return InGrain:MultiNew{2,trigger,dur,in_a}:madd(mul,add)

end

FMGrainB=UGen:new{name='FMGrainB'}

function FMGrainB.ar(trigger,dur,carfreq,modfreq,index,envbuf,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;mul=mul or 1;add=add or 0;

	return FMGrainB:MultiNew{2,trigger,dur,carfreq,modfreq,index,envbuf}:madd(mul,add)

end

FMGrainI=UGen:new{name='FMGrainI'}

function FMGrainI.ar(trigger,dur,carfreq,modfreq,index,envbuf1,envbuf2,ifac,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;ifac=ifac or 0.5;mul=mul or 1;add=add or 0;

	return FMGrainI:MultiNew{2,trigger,dur,carfreq,modfreq,index,envbuf1,envbuf2,ifac}:madd(mul,add)

end

InGrainI=UGen:new{name='InGrainI'}

function InGrainI.ar(trigger,dur,in_a,envbuf1,envbuf2,ifac,mul,add)

	trigger=trigger or 0;dur=dur or 1;ifac=ifac or 0.5;mul=mul or 1;add=add or 0;

	return InGrainI:MultiNew{2,trigger,dur,in_a,envbuf1,envbuf2,ifac}:madd(mul,add)

end

SinGrainB=UGen:new{name='SinGrainB'}

function SinGrainB.ar(trigger,dur,freq,envbuf,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;mul=mul or 1;add=add or 0;

	return SinGrainB:MultiNew{2,trigger,dur,freq,envbuf}:madd(mul,add)

end

FMGrain=UGen:new{name='FMGrain'}

function FMGrain.ar(trigger,dur,carfreq,modfreq,index,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;mul=mul or 1;add=add or 0;

	return FMGrain:MultiNew{2,trigger,dur,carfreq,modfreq,index}:madd(mul,add)

end

InGrainB=UGen:new{name='InGrainB'}

function InGrainB.ar(trigger,dur,in_a,envbuf,mul,add)

	trigger=trigger or 0;dur=dur or 1;mul=mul or 1;add=add or 0;

	return InGrainB:MultiNew{2,trigger,dur,in_a,envbuf}:madd(mul,add)

end

SinGrainI=UGen:new{name='SinGrainI'}

function SinGrainI.ar(trigger,dur,freq,envbuf1,envbuf2,ifac,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;ifac=ifac or 0.5;mul=mul or 1;add=add or 0;

	return SinGrainI:MultiNew{2,trigger,dur,freq,envbuf1,envbuf2,ifac}:madd(mul,add)

end

BufGrain=UGen:new{name='BufGrain'}

function BufGrain.ar(trigger,dur,sndbuf,rate,pos,interp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;interp=interp or 2;mul=mul or 1;add=add or 0;

	return BufGrain:MultiNew{2,trigger,dur,sndbuf,rate,pos,interp}:madd(mul,add)

end

MonoGrain=UGen:new{name='MonoGrain'}

function MonoGrain.ar(in_a,winsize,grainrate,winrandpct,mul,add)

	winsize=winsize or 0.1;grainrate=grainrate or 10;winrandpct=winrandpct or 0;mul=mul or 1;add=add or 0;

	return MonoGrain:MultiNew{2,in_a,winsize,grainrate,winrandpct}:madd(mul,add)

end

BufGrainI=UGen:new{name='BufGrainI'}

function BufGrainI.ar(trigger,dur,sndbuf,rate,pos,envbuf1,envbuf2,ifac,interp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;ifac=ifac or 0.5;interp=interp or 2;mul=mul or 1;add=add or 0;

	return BufGrainI:MultiNew{2,trigger,dur,sndbuf,rate,pos,envbuf1,envbuf2,ifac,interp}:madd(mul,add)

end

BufGrainB=UGen:new{name='BufGrainB'}

function BufGrainB.ar(trigger,dur,sndbuf,rate,pos,envbuf,interp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;interp=interp or 2;mul=mul or 1;add=add or 0;

	return BufGrainB:MultiNew{2,trigger,dur,sndbuf,rate,pos,envbuf,interp}:madd(mul,add)

end

RandID=UGen:new{name='RandID'}

function RandID.ir(id)

	id=id or 0;

	return RandID:MultiNew{0,id}

end

function RandID.kr(id)

	id=id or 0;

	return RandID:MultiNew{1,id}

end

ClearBuf=UGen:new{name='ClearBuf'}

SetBuf=UGen:new{name='SetBuf'}

IFFT=UGen:new{name='IFFT'}

function IFFT.kr(buffer,wintype,winsize)

	wintype=wintype or 0;winsize=winsize or 0;

	return IFFT:MultiNew{1,buffer,wintype,winsize}

end

function IFFT.ar(buffer,wintype,winsize)

	wintype=wintype or 0;winsize=winsize or 0;

	return IFFT:MultiNew{2,buffer,wintype,winsize}

end

PV_ChainUGen=UGen:new{name='PV_ChainUGen'}

LocalBuf=UGen:new{name='LocalBuf'}

RandSeed=UGen:new{name='RandSeed'}

function RandSeed.ir(trig,seed)

	trig=trig or 0;seed=seed or 56789;

	return RandSeed:MultiNew{0,trig,seed}

end

function RandSeed.kr(trig,seed)

	trig=trig or 0;seed=seed or 56789;

	return RandSeed:MultiNew{1,trig,seed}

end

function RandSeed.ar(trig,seed)

	trig=trig or 0;seed=seed or 56789;

	return RandSeed:MultiNew{2,trig,seed}

end

PV_JensenAndersen=UGen:new{name='PV_JensenAndersen'}

function PV_JensenAndersen.ar(buffer,propsc,prophfe,prophfc,propsf,threshold,waittime)

	propsc=propsc or 0.25;prophfe=prophfe or 0.25;prophfc=prophfc or 0.25;propsf=propsf or 0.25;threshold=threshold or 1;waittime=waittime or 0.04;

	return PV_JensenAndersen:MultiNew{2,buffer,propsc,prophfe,prophfc,propsf,threshold,waittime}

end

PV_Whiten=UGen:new{name='PV_Whiten'}

PV_MagMap=UGen:new{name='PV_MagMap'}

PV_MagFreeze=UGen:new{name='PV_MagFreeze'}

PV_MagSubtract=UGen:new{name='PV_MagSubtract'}

FFT=UGen:new{name='FFT'}

PV_BinBufRd=UGen:new{name='PV_BinBufRd'}

PV_ExtractRepeat=UGen:new{name='PV_ExtractRepeat'}

PV_BinFilter=UGen:new{name='PV_BinFilter'}

PV_RectComb2=UGen:new{name='PV_RectComb2'}

PV_BrickWall=UGen:new{name='PV_BrickWall'}

PV_Freeze=UGen:new{name='PV_Freeze'}

PV_PhaseShift=UGen:new{name='PV_PhaseShift'}

PV_MagAbove=UGen:new{name='PV_MagAbove'}

PV_BufRd=UGen:new{name='PV_BufRd'}

PV_HainsworthFoote=UGen:new{name='PV_HainsworthFoote'}

function PV_HainsworthFoote.ar(buffer,proph,propf,threshold,waittime)

	proph=proph or 0;propf=propf or 0;threshold=threshold or 1;waittime=waittime or 0.04;

	return PV_HainsworthFoote:MultiNew{2,buffer,proph,propf,threshold,waittime}

end

FFTTrigger=UGen:new{name='FFTTrigger'}

PV_BinScramble=UGen:new{name='PV_BinScramble'}

PV_PitchShift=UGen:new{name='PV_PitchShift'}

PV_MagMulAdd=UGen:new{name='PV_MagMulAdd'}

PV_MagLog=UGen:new{name='PV_MagLog'}

PV_NoiseSynthP=UGen:new{name='PV_NoiseSynthP'}

PV_MagMul=UGen:new{name='PV_MagMul'}

PV_MagDiv=UGen:new{name='PV_MagDiv'}

PV_MagSquared=UGen:new{name='PV_MagSquared'}

PV_PlayBuf=UGen:new{name='PV_PlayBuf'}

PV_Diffuser=UGen:new{name='PV_Diffuser'}

PV_OddBin=UGen:new{name='PV_OddBin'}

PV_MagSmear=UGen:new{name='PV_MagSmear'}

PV_BinWipe=UGen:new{name='PV_BinWipe'}

PV_BinPlayBuf=UGen:new{name='PV_BinPlayBuf'}

PackFFT=UGen:new{name='PackFFT'}

PV_MagExp=UGen:new{name='PV_MagExp'}

PV_MagBuffer=UGen:new{name='PV_MagBuffer'}

PV_SpectralMap=UGen:new{name='PV_SpectralMap'}

PV_DiffMags=UGen:new{name='PV_DiffMags'}

Cepstrum=UGen:new{name='Cepstrum'}

PV_MaxMagN=UGen:new{name='PV_MaxMagN'}

PV_RectComb=UGen:new{name='PV_RectComb'}

PV_RandComb=UGen:new{name='PV_RandComb'}

PV_RecordBuf=UGen:new{name='PV_RecordBuf'}

PV_SpectralEnhance=UGen:new{name='PV_SpectralEnhance'}

PV_ConformalMap=UGen:new{name='PV_ConformalMap'}

PV_Invert=UGen:new{name='PV_Invert'}

PV_MagSmooth=UGen:new{name='PV_MagSmooth'}

PV_RandWipe=UGen:new{name='PV_RandWipe'}

PV_BinShift=UGen:new{name='PV_BinShift'}

PV_BinDelay=UGen:new{name='PV_BinDelay'}

PV_MagClip=UGen:new{name='PV_MagClip'}

PV_MagBelow=UGen:new{name='PV_MagBelow'}

PV_LocalMax=UGen:new{name='PV_LocalMax'}

PV_PartialSynthF=UGen:new{name='PV_PartialSynthF'}

PV_PartialSynthP=UGen:new{name='PV_PartialSynthP'}

PV_NoiseSynthF=UGen:new{name='PV_NoiseSynthF'}

PV_Max=UGen:new{name='PV_Max'}

PV_Copy=UGen:new{name='PV_Copy'}

PV_CopyPhase=UGen:new{name='PV_CopyPhase'}

PV_Mul=UGen:new{name='PV_Mul'}

PV_Add=UGen:new{name='PV_Add'}

PV_Div=UGen:new{name='PV_Div'}

PV_Min=UGen:new{name='PV_Min'}

PV_PhaseShift270=UGen:new{name='PV_PhaseShift270'}

PV_Conj=UGen:new{name='PV_Conj'}

PV_MagNoise=UGen:new{name='PV_MagNoise'}

PV_PhaseShift90=UGen:new{name='PV_PhaseShift90'}

PV_EvenBin=UGen:new{name='PV_EvenBin'}

PV_FreqBuffer=UGen:new{name='PV_FreqBuffer'}

ICepstrum=UGen:new{name='ICepstrum'}

PV_MinMagN=UGen:new{name='PV_MinMagN'}

PV_MagShift=UGen:new{name='PV_MagShift'}

TDuty=UGen:new{name='TDuty'}

function TDuty.kr(dur,reset,level,doneAction,gapFirst)

	dur=dur or 1;reset=reset or 0;level=level or 1;doneAction=doneAction or 0;gapFirst=gapFirst or 0;

	return TDuty:MultiNew{1,dur,reset,level,doneAction,gapFirst}

end

function TDuty.ar(dur,reset,level,doneAction,gapFirst)

	dur=dur or 1;reset=reset or 0;level=level or 1;doneAction=doneAction or 0;gapFirst=gapFirst or 0;

	return TDuty:MultiNew{2,dur,reset,level,doneAction,gapFirst}

end

PinkNoise=UGen:new{name='PinkNoise'}

function PinkNoise.kr(mul,add)

	mul=mul or 1;add=add or 0;

	return PinkNoise:MultiNew{1}:madd(mul,add)

end

function PinkNoise.ar(mul,add)

	mul=mul or 1;add=add or 0;

	return PinkNoise:MultiNew{2}:madd(mul,add)

end

BrownNoise=UGen:new{name='BrownNoise'}

function BrownNoise.kr(mul,add)

	mul=mul or 1;add=add or 0;

	return BrownNoise:MultiNew{1}:madd(mul,add)

end

function BrownNoise.ar(mul,add)

	mul=mul or 1;add=add or 0;

	return BrownNoise:MultiNew{2}:madd(mul,add)

end

ClipNoise=UGen:new{name='ClipNoise'}

function ClipNoise.kr(mul,add)

	mul=mul or 1;add=add or 0;

	return ClipNoise:MultiNew{1}:madd(mul,add)

end

function ClipNoise.ar(mul,add)

	mul=mul or 1;add=add or 0;

	return ClipNoise:MultiNew{2}:madd(mul,add)

end

GrayNoise=UGen:new{name='GrayNoise'}

function GrayNoise.kr(mul,add)

	mul=mul or 1;add=add or 0;

	return GrayNoise:MultiNew{1}:madd(mul,add)

end

function GrayNoise.ar(mul,add)

	mul=mul or 1;add=add or 0;

	return GrayNoise:MultiNew{2}:madd(mul,add)

end

LeastChange=UGen:new{name='LeastChange'}

function LeastChange.kr(a,b)

	a=a or 0;b=b or 0;

	return LeastChange:MultiNew{1,a,b}

end

function LeastChange.ar(a,b)

	a=a or 0;b=b or 0;

	return LeastChange:MultiNew{2,a,b}

end

LFClipNoise=UGen:new{name='LFClipNoise'}

function LFClipNoise.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFClipNoise:MultiNew{1,freq}:madd(mul,add)

end

function LFClipNoise.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFClipNoise:MultiNew{2,freq}:madd(mul,add)

end

LFDNoise3=UGen:new{name='LFDNoise3'}

function LFDNoise3.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise3:MultiNew{1,freq}:madd(mul,add)

end

function LFDNoise3.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise3:MultiNew{2,freq}:madd(mul,add)

end

LFDNoise0=UGen:new{name='LFDNoise0'}

function LFDNoise0.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise0:MultiNew{1,freq}:madd(mul,add)

end

function LFDNoise0.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise0:MultiNew{2,freq}:madd(mul,add)

end

LFNoise2=UGen:new{name='LFNoise2'}

function LFNoise2.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise2:MultiNew{1,freq}:madd(mul,add)

end

function LFNoise2.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise2:MultiNew{2,freq}:madd(mul,add)

end

LFDNoise1=UGen:new{name='LFDNoise1'}

function LFDNoise1.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise1:MultiNew{1,freq}:madd(mul,add)

end

function LFDNoise1.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDNoise1:MultiNew{2,freq}:madd(mul,add)

end

LFNoise1=UGen:new{name='LFNoise1'}

function LFNoise1.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise1:MultiNew{1,freq}:madd(mul,add)

end

function LFNoise1.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFNoise1:MultiNew{2,freq}:madd(mul,add)

end

LFDClipNoise=UGen:new{name='LFDClipNoise'}

function LFDClipNoise.kr(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDClipNoise:MultiNew{1,freq}:madd(mul,add)

end

function LFDClipNoise.ar(freq,mul,add)

	freq=freq or 500;mul=mul or 1;add=add or 0;

	return LFDClipNoise:MultiNew{2,freq}:madd(mul,add)

end

Dswitch1=UGen:new{name='Dswitch1'}

Dseries=UGen:new{name='Dseries'}

Dpoll=UGen:new{name='Dpoll'}

DbufTag=UGen:new{name='DbufTag'}

Dbufwr=UGen:new{name='Dbufwr'}

Dreset=UGen:new{name='Dreset'}

Dbrown=UGen:new{name='Dbrown'}

Dwrand=UGen:new{name='Dwrand'}

ListDUGen=UGen:new{name='ListDUGen'}

Dgeom=UGen:new{name='Dgeom'}

Dstutter=UGen:new{name='Dstutter'}

DetaBlockerBuf=UGen:new{name='DetaBlockerBuf'}

Dwhite=UGen:new{name='Dwhite'}

Donce=UGen:new{name='Donce'}

Dfsm=UGen:new{name='Dfsm'}

Dbufrd=UGen:new{name='Dbufrd'}

Dswitch=UGen:new{name='Dswitch'}

Dtag=UGen:new{name='Dtag'}

Dibrown=UGen:new{name='Dibrown'}

Dshuf=UGen:new{name='Dshuf'}

Dxrand=UGen:new{name='Dxrand'}

Drand=UGen:new{name='Drand'}

Dseq=UGen:new{name='Dseq'}

Dser=UGen:new{name='Dser'}

Diwhite=UGen:new{name='Diwhite'}

NestedAllpassC=UGen:new{name='NestedAllpassC'}

function NestedAllpassC.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,mul,add)

	maxdelay1=maxdelay1 or 0.036;delay1=delay1 or 0.036;gain1=gain1 or 0.08;maxdelay2=maxdelay2 or 0.03;delay2=delay2 or 0.03;gain2=gain2 or 0.3;mul=mul or 1;add=add or 0;

	return NestedAllpassC:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2}:madd(mul,add)

end

NestedAllpassL=UGen:new{name='NestedAllpassL'}

function NestedAllpassL.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,mul,add)

	maxdelay1=maxdelay1 or 0.036;delay1=delay1 or 0.036;gain1=gain1 or 0.08;maxdelay2=maxdelay2 or 0.03;delay2=delay2 or 0.03;gain2=gain2 or 0.3;mul=mul or 1;add=add or 0;

	return NestedAllpassL:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2}:madd(mul,add)

end

BufDelayC=UGen:new{name='BufDelayC'}

function BufDelayC.kr(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayC:MultiNew{1,buf,in_a,delaytime}:madd(mul,add)

end

function BufDelayC.ar(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayC:MultiNew{2,buf,in_a,delaytime}:madd(mul,add)

end

BufDelayL=UGen:new{name='BufDelayL'}

function BufDelayL.kr(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayL:MultiNew{1,buf,in_a,delaytime}:madd(mul,add)

end

function BufDelayL.ar(buf,in_a,delaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return BufDelayL:MultiNew{2,buf,in_a,delaytime}:madd(mul,add)

end

Henon2DC=UGen:new{name='Henon2DC'}

function Henon2DC.kr(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DC:MultiNew{1,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

function Henon2DC.ar(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DC:MultiNew{2,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

Henon2DL=UGen:new{name='Henon2DL'}

function Henon2DL.kr(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DL:MultiNew{1,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

function Henon2DL.ar(minfreq,maxfreq,a,b,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0.30501993062401;y0=y0 or 0.20938865431933;mul=mul or 1;add=add or 0;

	return Henon2DL:MultiNew{2,minfreq,maxfreq,a,b,x0,y0}:madd(mul,add)

end

Delay2=UGen:new{name='Delay2'}

function Delay2.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Delay2:MultiNew{1,in_a}:madd(mul,add)

end

function Delay2.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Delay2:MultiNew{2,in_a}:madd(mul,add)

end

VarLag=UGen:new{name='VarLag'}

function VarLag.kr(in_a,time,curvature,warp,start,mul,add)

	in_a=in_a or 0;time=time or 0.1;curvature=curvature or 0;warp=warp or 5;mul=mul or 1;add=add or 0;

	return VarLag:MultiNew{1,in_a,time,curvature,warp,start}:madd(mul,add)

end

function VarLag.ar(in_a,time,curvature,warp,start,mul,add)

	in_a=in_a or 0;time=time or 0.1;curvature=curvature or 0;warp=warp or 5;mul=mul or 1;add=add or 0;

	return VarLag:MultiNew{2,in_a,time,curvature,warp,start}:madd(mul,add)

end

BPF=UGen:new{name='BPF'}

function BPF.kr(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BPF:MultiNew{1,in_a,freq,rq}:madd(mul,add)

end

function BPF.ar(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BPF:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

FreeVerb=UGen:new{name='FreeVerb'}

function FreeVerb.ar(in_a,mix,room,damp,mul,add)

	mix=mix or 0.33;room=room or 0.5;damp=damp or 0.5;mul=mul or 1;add=add or 0;

	return FreeVerb:MultiNew{2,in_a,mix,room,damp}:madd(mul,add)

end

CircleRamp=UGen:new{name='CircleRamp'}

function CircleRamp.kr(in_a,lagTime,circmin,circmax,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;circmin=circmin or -180;circmax=circmax or 180;mul=mul or 1;add=add or 0;

	return CircleRamp:MultiNew{1,in_a,lagTime,circmin,circmax}:madd(mul,add)

end

function CircleRamp.ar(in_a,lagTime,circmin,circmax,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;circmin=circmin or -180;circmax=circmax or 180;mul=mul or 1;add=add or 0;

	return CircleRamp:MultiNew{2,in_a,lagTime,circmin,circmax}:madd(mul,add)

end

LPF=UGen:new{name='LPF'}

function LPF.kr(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return LPF:MultiNew{1,in_a,freq}:madd(mul,add)

end

function LPF.ar(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return LPF:MultiNew{2,in_a,freq}:madd(mul,add)

end

InsideOut=UGen:new{name='InsideOut'}

function InsideOut.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return InsideOut:MultiNew{1,in_a}:madd(mul,add)

end

function InsideOut.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return InsideOut:MultiNew{2,in_a}:madd(mul,add)

end

LPZ2=UGen:new{name='LPZ2'}

function LPZ2.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return LPZ2:MultiNew{1,in_a}:madd(mul,add)

end

function LPZ2.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return LPZ2:MultiNew{2,in_a}:madd(mul,add)

end

LagUD=UGen:new{name='LagUD'}

function LagUD.kr(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return LagUD:MultiNew{1,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

function LagUD.ar(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return LagUD:MultiNew{2,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

Decay2=UGen:new{name='Decay2'}

function Decay2.kr(in_a,attackTime,decayTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;decayTime=decayTime or 1;mul=mul or 1;add=add or 0;

	return Decay2:MultiNew{1,in_a,attackTime,decayTime}:madd(mul,add)

end

function Decay2.ar(in_a,attackTime,decayTime,mul,add)

	in_a=in_a or 0;attackTime=attackTime or 0.01;decayTime=decayTime or 1;mul=mul or 1;add=add or 0;

	return Decay2:MultiNew{2,in_a,attackTime,decayTime}:madd(mul,add)

end

Decay=UGen:new{name='Decay'}

function Decay.kr(in_a,decayTime,mul,add)

	in_a=in_a or 0;decayTime=decayTime or 1;mul=mul or 1;add=add or 0;

	return Decay:MultiNew{1,in_a,decayTime}:madd(mul,add)

end

function Decay.ar(in_a,decayTime,mul,add)

	in_a=in_a or 0;decayTime=decayTime or 1;mul=mul or 1;add=add or 0;

	return Decay:MultiNew{2,in_a,decayTime}:madd(mul,add)

end

OnePole=UGen:new{name='OnePole'}

function OnePole.kr(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return OnePole:MultiNew{1,in_a,coef}:madd(mul,add)

end

function OnePole.ar(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return OnePole:MultiNew{2,in_a,coef}:madd(mul,add)

end

Resonz=UGen:new{name='Resonz'}

function Resonz.kr(in_a,freq,bwr,mul,add)

	in_a=in_a or 0;freq=freq or 440;bwr=bwr or 1;mul=mul or 1;add=add or 0;

	return Resonz:MultiNew{1,in_a,freq,bwr}:madd(mul,add)

end

function Resonz.ar(in_a,freq,bwr,mul,add)

	in_a=in_a or 0;freq=freq or 440;bwr=bwr or 1;mul=mul or 1;add=add or 0;

	return Resonz:MultiNew{2,in_a,freq,bwr}:madd(mul,add)

end

Friction=UGen:new{name='Friction'}

function Friction.kr(in_a,friction,spring,damp,mass,beltmass,mul,add)

	friction=friction or 0.5;spring=spring or 0.414;damp=damp or 0.313;mass=mass or 0.1;beltmass=beltmass or 1;mul=mul or 1;add=add or 0;

	return Friction:MultiNew{1,in_a,friction,spring,damp,mass,beltmass}:madd(mul,add)

end

function Friction.ar(in_a,friction,spring,damp,mass,beltmass,mul,add)

	friction=friction or 0.5;spring=spring or 0.414;damp=damp or 0.313;mass=mass or 0.1;beltmass=beltmass or 1;mul=mul or 1;add=add or 0;

	return Friction:MultiNew{2,in_a,friction,spring,damp,mass,beltmass}:madd(mul,add)

end

MoogFF=UGen:new{name='MoogFF'}

function MoogFF.kr(in_a,freq,gain,reset,mul,add)

	freq=freq or 100;gain=gain or 2;reset=reset or 0;mul=mul or 1;add=add or 0;

	return MoogFF:MultiNew{1,in_a,freq,gain,reset}:madd(mul,add)

end

function MoogFF.ar(in_a,freq,gain,reset,mul,add)

	freq=freq or 100;gain=gain or 2;reset=reset or 0;mul=mul or 1;add=add or 0;

	return MoogFF:MultiNew{2,in_a,freq,gain,reset}:madd(mul,add)

end

Median=UGen:new{name='Median'}

function Median.kr(length,in_a,mul,add)

	length=length or 3;in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Median:MultiNew{1,length,in_a}:madd(mul,add)

end

function Median.ar(length,in_a,mul,add)

	length=length or 3;in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Median:MultiNew{2,length,in_a}:madd(mul,add)

end

Integrator=UGen:new{name='Integrator'}

function Integrator.kr(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 1;mul=mul or 1;add=add or 0;

	return Integrator:MultiNew{1,in_a,coef}:madd(mul,add)

end

function Integrator.ar(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 1;mul=mul or 1;add=add or 0;

	return Integrator:MultiNew{2,in_a,coef}:madd(mul,add)

end

DetectSilence=UGen:new{name='DetectSilence'}

function DetectSilence.kr(in_a,amp,time,doneAction)

	in_a=in_a or 0;amp=amp or 0.0001;time=time or 0.1;doneAction=doneAction or 0;

	return DetectSilence:MultiNew{1,in_a,amp,time,doneAction}

end

function DetectSilence.ar(in_a,amp,time,doneAction)

	in_a=in_a or 0;amp=amp or 0.0001;time=time or 0.1;doneAction=doneAction or 0;

	return DetectSilence:MultiNew{2,in_a,amp,time,doneAction}

end

Lag=UGen:new{name='Lag'}

function Lag.kr(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag:MultiNew{1,in_a,lagTime}:madd(mul,add)

end

function Lag.ar(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag:MultiNew{2,in_a,lagTime}:madd(mul,add)

end

LPZ1=UGen:new{name='LPZ1'}

function LPZ1.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return LPZ1:MultiNew{1,in_a}:madd(mul,add)

end

function LPZ1.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return LPZ1:MultiNew{2,in_a}:madd(mul,add)

end

Ringz=UGen:new{name='Ringz'}

function Ringz.kr(in_a,freq,decaytime,mul,add)

	in_a=in_a or 0;freq=freq or 440;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return Ringz:MultiNew{1,in_a,freq,decaytime}:madd(mul,add)

end

function Ringz.ar(in_a,freq,decaytime,mul,add)

	in_a=in_a or 0;freq=freq or 440;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return Ringz:MultiNew{2,in_a,freq,decaytime}:madd(mul,add)

end

WaveLoss=UGen:new{name='WaveLoss'}

function WaveLoss.kr(in_a,drop,outof,mode,mul,add)

	in_a=in_a or 0;drop=drop or 20;outof=outof or 40;mode=mode or 1;mul=mul or 1;add=add or 0;

	return WaveLoss:MultiNew{1,in_a,drop,outof,mode}:madd(mul,add)

end

function WaveLoss.ar(in_a,drop,outof,mode,mul,add)

	in_a=in_a or 0;drop=drop or 20;outof=outof or 40;mode=mode or 1;mul=mul or 1;add=add or 0;

	return WaveLoss:MultiNew{2,in_a,drop,outof,mode}:madd(mul,add)

end

FOS=UGen:new{name='FOS'}

function FOS.kr(in_a,a0,a1,b1,mul,add)

	in_a=in_a or 0;a0=a0 or 0;a1=a1 or 0;b1=b1 or 0;mul=mul or 1;add=add or 0;

	return FOS:MultiNew{1,in_a,a0,a1,b1}:madd(mul,add)

end

function FOS.ar(in_a,a0,a1,b1,mul,add)

	in_a=in_a or 0;a0=a0 or 0;a1=a1 or 0;b1=b1 or 0;mul=mul or 1;add=add or 0;

	return FOS:MultiNew{2,in_a,a0,a1,b1}:madd(mul,add)

end

RLPF=UGen:new{name='RLPF'}

function RLPF.kr(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return RLPF:MultiNew{1,in_a,freq,rq}:madd(mul,add)

end

function RLPF.ar(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return RLPF:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

MeanTriggered=UGen:new{name='MeanTriggered'}

function MeanTriggered.kr(in_a,trig,length,mul,add)

	in_a=in_a or 0;trig=trig or 0;length=length or 10;mul=mul or 1;add=add or 0;

	return MeanTriggered:MultiNew{1,in_a,trig,length}:madd(mul,add)

end

function MeanTriggered.ar(in_a,trig,length,mul,add)

	in_a=in_a or 0;trig=trig or 0;length=length or 10;mul=mul or 1;add=add or 0;

	return MeanTriggered:MultiNew{2,in_a,trig,length}:madd(mul,add)

end

MedianTriggered=UGen:new{name='MedianTriggered'}

function MedianTriggered.kr(in_a,trig,length,mul,add)

	in_a=in_a or 0;trig=trig or 0;length=length or 10;mul=mul or 1;add=add or 0;

	return MedianTriggered:MultiNew{1,in_a,trig,length}:madd(mul,add)

end

function MedianTriggered.ar(in_a,trig,length,mul,add)

	in_a=in_a or 0;trig=trig or 0;length=length or 10;mul=mul or 1;add=add or 0;

	return MedianTriggered:MultiNew{2,in_a,trig,length}:madd(mul,add)

end

MidEQ=UGen:new{name='MidEQ'}

function MidEQ.kr(in_a,freq,rq,db,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;db=db or 0;mul=mul or 1;add=add or 0;

	return MidEQ:MultiNew{1,in_a,freq,rq,db}:madd(mul,add)

end

function MidEQ.ar(in_a,freq,rq,db,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;db=db or 0;mul=mul or 1;add=add or 0;

	return MidEQ:MultiNew{2,in_a,freq,rq,db}:madd(mul,add)

end

Slew=UGen:new{name='Slew'}

function Slew.kr(in_a,up,dn,mul,add)

	in_a=in_a or 0;up=up or 1;dn=dn or 1;mul=mul or 1;add=add or 0;

	return Slew:MultiNew{1,in_a,up,dn}:madd(mul,add)

end

function Slew.ar(in_a,up,dn,mul,add)

	in_a=in_a or 0;up=up or 1;dn=dn or 1;mul=mul or 1;add=add or 0;

	return Slew:MultiNew{2,in_a,up,dn}:madd(mul,add)

end

LeakDC=UGen:new{name='LeakDC'}

function LeakDC.kr(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.9;mul=mul or 1;add=add or 0;

	return LeakDC:MultiNew{1,in_a,coef}:madd(mul,add)

end

function LeakDC.ar(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.995;mul=mul or 1;add=add or 0;

	return LeakDC:MultiNew{2,in_a,coef}:madd(mul,add)

end

TwoPole=UGen:new{name='TwoPole'}

function TwoPole.kr(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return TwoPole:MultiNew{1,in_a,freq,radius}:madd(mul,add)

end

function TwoPole.ar(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return TwoPole:MultiNew{2,in_a,freq,radius}:madd(mul,add)

end

BEQSuite=UGen:new{name='BEQSuite'}

Slope=UGen:new{name='Slope'}

function Slope.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Slope:MultiNew{1,in_a}:madd(mul,add)

end

function Slope.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return Slope:MultiNew{2,in_a}:madd(mul,add)

end

Formlet=UGen:new{name='Formlet'}

function Formlet.kr(in_a,freq,attacktime,decaytime,mul,add)

	in_a=in_a or 0;freq=freq or 440;attacktime=attacktime or 1;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return Formlet:MultiNew{1,in_a,freq,attacktime,decaytime}:madd(mul,add)

end

function Formlet.ar(in_a,freq,attacktime,decaytime,mul,add)

	in_a=in_a or 0;freq=freq or 440;attacktime=attacktime or 1;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return Formlet:MultiNew{2,in_a,freq,attacktime,decaytime}:madd(mul,add)

end

SOS=UGen:new{name='SOS'}

function SOS.kr(in_a,a0,a1,a2,b1,b2,mul,add)

	in_a=in_a or 0;a0=a0 or 0;a1=a1 or 0;a2=a2 or 0;b1=b1 or 0;b2=b2 or 0;mul=mul or 1;add=add or 0;

	return SOS:MultiNew{1,in_a,a0,a1,a2,b1,b2}:madd(mul,add)

end

function SOS.ar(in_a,a0,a1,a2,b1,b2,mul,add)

	in_a=in_a or 0;a0=a0 or 0;a1=a1 or 0;a2=a2 or 0;b1=b1 or 0;b2=b2 or 0;mul=mul or 1;add=add or 0;

	return SOS:MultiNew{2,in_a,a0,a1,a2,b1,b2}:madd(mul,add)

end

Changed=UGen:new{name='Changed'}

function Changed.kr(input,threshold)

	threshold=threshold or 0;

	return Changed:MultiNew{1,input,threshold}

end

function Changed.ar(input,threshold)

	threshold=threshold or 0;

	return Changed:MultiNew{2,input,threshold}

end

BRF=UGen:new{name='BRF'}

function BRF.kr(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BRF:MultiNew{1,in_a,freq,rq}:madd(mul,add)

end

function BRF.ar(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BRF:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

HPF=UGen:new{name='HPF'}

function HPF.kr(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return HPF:MultiNew{1,in_a,freq}:madd(mul,add)

end

function HPF.ar(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return HPF:MultiNew{2,in_a,freq}:madd(mul,add)

end

GlitchHPF=UGen:new{name='GlitchHPF'}

function GlitchHPF.kr(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return GlitchHPF:MultiNew{1,in_a,freq}:madd(mul,add)

end

function GlitchHPF.ar(in_a,freq,mul,add)

	in_a=in_a or 0;freq=freq or 440;mul=mul or 1;add=add or 0;

	return GlitchHPF:MultiNew{2,in_a,freq}:madd(mul,add)

end

HPZ2=UGen:new{name='HPZ2'}

function HPZ2.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return HPZ2:MultiNew{1,in_a}:madd(mul,add)

end

function HPZ2.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return HPZ2:MultiNew{2,in_a}:madd(mul,add)

end

BPZ2=UGen:new{name='BPZ2'}

function BPZ2.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return BPZ2:MultiNew{1,in_a}:madd(mul,add)

end

function BPZ2.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return BPZ2:MultiNew{2,in_a}:madd(mul,add)

end

BRZ2=UGen:new{name='BRZ2'}

function BRZ2.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return BRZ2:MultiNew{1,in_a}:madd(mul,add)

end

function BRZ2.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return BRZ2:MultiNew{2,in_a}:madd(mul,add)

end

Lag2UD=UGen:new{name='Lag2UD'}

function Lag2UD.kr(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return Lag2UD:MultiNew{1,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

function Lag2UD.ar(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return Lag2UD:MultiNew{2,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

Lag3UD=UGen:new{name='Lag3UD'}

function Lag3UD.kr(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return Lag3UD:MultiNew{1,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

function Lag3UD.ar(in_a,lagTimeU,lagTimeD,mul,add)

	in_a=in_a or 0;lagTimeU=lagTimeU or 0.1;lagTimeD=lagTimeD or 0.1;mul=mul or 1;add=add or 0;

	return Lag3UD:MultiNew{2,in_a,lagTimeU,lagTimeD}:madd(mul,add)

end

OneZero=UGen:new{name='OneZero'}

function OneZero.kr(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return OneZero:MultiNew{1,in_a,coef}:madd(mul,add)

end

function OneZero.ar(in_a,coef,mul,add)

	in_a=in_a or 0;coef=coef or 0.5;mul=mul or 1;add=add or 0;

	return OneZero:MultiNew{2,in_a,coef}:madd(mul,add)

end

Ramp=UGen:new{name='Ramp'}

function Ramp.kr(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Ramp:MultiNew{1,in_a,lagTime}:madd(mul,add)

end

function Ramp.ar(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Ramp:MultiNew{2,in_a,lagTime}:madd(mul,add)

end

Lag3=UGen:new{name='Lag3'}

function Lag3.kr(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag3:MultiNew{1,in_a,lagTime}:madd(mul,add)

end

function Lag3.ar(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag3:MultiNew{2,in_a,lagTime}:madd(mul,add)

end

Lag2=UGen:new{name='Lag2'}

function Lag2.kr(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag2:MultiNew{1,in_a,lagTime}:madd(mul,add)

end

function Lag2.ar(in_a,lagTime,mul,add)

	in_a=in_a or 0;lagTime=lagTime or 0.1;mul=mul or 1;add=add or 0;

	return Lag2:MultiNew{2,in_a,lagTime}:madd(mul,add)

end

HPZ1=UGen:new{name='HPZ1'}

function HPZ1.kr(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return HPZ1:MultiNew{1,in_a}:madd(mul,add)

end

function HPZ1.ar(in_a,mul,add)

	in_a=in_a or 0;mul=mul or 1;add=add or 0;

	return HPZ1:MultiNew{2,in_a}:madd(mul,add)

end

GlitchRHPF=UGen:new{name='GlitchRHPF'}

function GlitchRHPF.kr(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return GlitchRHPF:MultiNew{1,in_a,freq,rq}:madd(mul,add)

end

function GlitchRHPF.ar(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return GlitchRHPF:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

RHPF=UGen:new{name='RHPF'}

function RHPF.kr(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return RHPF:MultiNew{1,in_a,freq,rq}:madd(mul,add)

end

function RHPF.ar(in_a,freq,rq,mul,add)

	in_a=in_a or 0;freq=freq or 440;rq=rq or 1;mul=mul or 1;add=add or 0;

	return RHPF:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

TwoZero=UGen:new{name='TwoZero'}

function TwoZero.kr(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return TwoZero:MultiNew{1,in_a,freq,radius}:madd(mul,add)

end

function TwoZero.ar(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return TwoZero:MultiNew{2,in_a,freq,radius}:madd(mul,add)

end

APF=UGen:new{name='APF'}

function APF.kr(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return APF:MultiNew{1,in_a,freq,radius}:madd(mul,add)

end

function APF.ar(in_a,freq,radius,mul,add)

	in_a=in_a or 0;freq=freq or 440;radius=radius or 0.8;mul=mul or 1;add=add or 0;

	return APF:MultiNew{2,in_a,freq,radius}:madd(mul,add)

end

BBandStop=UGen:new{name='BBandStop'}

function BBandStop.ar(in_a,freq,bw,mul,add)

	freq=freq or 1200;bw=bw or 1;mul=mul or 1;add=add or 0;

	return BBandStop:MultiNew{2,in_a,freq,bw}:madd(mul,add)

end

BHiPass=UGen:new{name='BHiPass'}

function BHiPass.ar(in_a,freq,rq,mul,add)

	freq=freq or 1200;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BHiPass:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

BLowShelf=UGen:new{name='BLowShelf'}

function BLowShelf.ar(in_a,freq,rs,db,mul,add)

	freq=freq or 1200;rs=rs or 1;db=db or 0;mul=mul or 1;add=add or 0;

	return BLowShelf:MultiNew{2,in_a,freq,rs,db}:madd(mul,add)

end

BPeakEQ=UGen:new{name='BPeakEQ'}

function BPeakEQ.ar(in_a,freq,rq,db,mul,add)

	freq=freq or 1200;rq=rq or 1;db=db or 0;mul=mul or 1;add=add or 0;

	return BPeakEQ:MultiNew{2,in_a,freq,rq,db}:madd(mul,add)

end

BAllPass=UGen:new{name='BAllPass'}

function BAllPass.ar(in_a,freq,rq,mul,add)

	freq=freq or 1200;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BAllPass:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

BHiShelf=UGen:new{name='BHiShelf'}

function BHiShelf.ar(in_a,freq,rs,db,mul,add)

	freq=freq or 1200;rs=rs or 1;db=db or 0;mul=mul or 1;add=add or 0;

	return BHiShelf:MultiNew{2,in_a,freq,rs,db}:madd(mul,add)

end

BBandPass=UGen:new{name='BBandPass'}

function BBandPass.ar(in_a,freq,bw,mul,add)

	freq=freq or 1200;bw=bw or 1;mul=mul or 1;add=add or 0;

	return BBandPass:MultiNew{2,in_a,freq,bw}:madd(mul,add)

end

BLowPass=UGen:new{name='BLowPass'}

function BLowPass.ar(in_a,freq,rq,mul,add)

	freq=freq or 1200;rq=rq or 1;mul=mul or 1;add=add or 0;

	return BLowPass:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

Standard2DC=UGen:new{name='Standard2DC'}

function Standard2DC.kr(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DC:MultiNew{1,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

function Standard2DC.ar(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DC:MultiNew{2,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

Standard2DL=UGen:new{name='Standard2DL'}

function Standard2DL.kr(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DL:MultiNew{1,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

function Standard2DL.ar(minfreq,maxfreq,k,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;k=k or 1.4;x0=x0 or 4.9789799812499;y0=y0 or 5.7473416156381;mul=mul or 1;add=add or 0;

	return Standard2DL:MultiNew{2,minfreq,maxfreq,k,x0,y0}:madd(mul,add)

end

MembraneHexagon=UGen:new{name='MembraneHexagon'}

function MembraneHexagon.ar(excitation,tension,loss,mul,add)

	tension=tension or 0.05;loss=loss or 0.99999;mul=mul or 1;add=add or 0;

	return MembraneHexagon:MultiNew{2,excitation,tension,loss}:madd(mul,add)

end

RMShelf2=UGen:new{name='RMShelf2'}

function RMShelf2.ar(in_a,freq,k,mul,add)

	freq=freq or 440;k=k or 0;mul=mul or 1;add=add or 0;

	return RMShelf2:MultiNew{2,in_a,freq,k}:madd(mul,add)

end

Allpass2=UGen:new{name='Allpass2'}

function Allpass2.ar(in_a,freq,rq,mul,add)

	freq=freq or 1200;rq=rq or 1;mul=mul or 1;add=add or 0;

	return Allpass2:MultiNew{2,in_a,freq,rq}:madd(mul,add)

end

Allpass1=UGen:new{name='Allpass1'}

function Allpass1.ar(in_a,freq,mul,add)

	freq=freq or 1200;mul=mul or 1;add=add or 0;

	return Allpass1:MultiNew{2,in_a,freq}:madd(mul,add)

end

RMShelf=UGen:new{name='RMShelf'}

function RMShelf.ar(in_a,freq,k,mul,add)

	freq=freq or 440;k=k or 0;mul=mul or 1;add=add or 0;

	return RMShelf:MultiNew{2,in_a,freq,k}:madd(mul,add)

end

RMEQ=UGen:new{name='RMEQ'}

function RMEQ.ar(in_a,freq,rq,k,mul,add)

	freq=freq or 440;rq=rq or 0.1;k=k or 0;mul=mul or 1;add=add or 0;

	return RMEQ:MultiNew{2,in_a,freq,rq,k}:madd(mul,add)

end

RegaliaMitraEQ=UGen:new{name='RegaliaMitraEQ'}

function RegaliaMitraEQ.ar(in_a,freq,rq,k,mul,add)

	freq=freq or 440;rq=rq or 0.1;k=k or 0;mul=mul or 1;add=add or 0;

	return RegaliaMitraEQ:MultiNew{2,in_a,freq,rq,k}:madd(mul,add)

end

T2K=UGen:new{name='T2K'}

function T2K.kr(in_a)

	in_a=in_a or 0;

	return T2K:MultiNew{1,in_a}

end

DoubleNestedAllpassL=UGen:new{name='DoubleNestedAllpassL'}

function DoubleNestedAllpassL.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3,mul,add)

	maxdelay1=maxdelay1 or 0.0047;delay1=delay1 or 0.0047;gain1=gain1 or 0.15;maxdelay2=maxdelay2 or 0.022;delay2=delay2 or 0.022;gain2=gain2 or 0.25;maxdelay3=maxdelay3 or 0.0083;delay3=delay3 or 0.0083;gain3=gain3 or 0.3;mul=mul or 1;add=add or 0;

	return DoubleNestedAllpassL:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3}:madd(mul,add)

end

DoubleNestedAllpassC=UGen:new{name='DoubleNestedAllpassC'}

function DoubleNestedAllpassC.ar(in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3,mul,add)

	maxdelay1=maxdelay1 or 0.0047;delay1=delay1 or 0.0047;gain1=gain1 or 0.15;maxdelay2=maxdelay2 or 0.022;delay2=delay2 or 0.022;gain2=gain2 or 0.25;maxdelay3=maxdelay3 or 0.0083;delay3=delay3 or 0.0083;gain3=gain3 or 0.3;mul=mul or 1;add=add or 0;

	return DoubleNestedAllpassC:MultiNew{2,in_a,maxdelay1,delay1,gain1,maxdelay2,delay2,gain2,maxdelay3,delay3,gain3}:madd(mul,add)

end

Lorenz2DL=UGen:new{name='Lorenz2DL'}

function Lorenz2DL.kr(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DL:MultiNew{1,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

function Lorenz2DL.ar(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DL:MultiNew{2,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

Lorenz2DC=UGen:new{name='Lorenz2DC'}

function Lorenz2DC.kr(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DC:MultiNew{1,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

function Lorenz2DC.ar(minfreq,maxfreq,s,r,b,h,x0,y0,z0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;s=s or 10;r=r or 28;b=b or 2.6666667;h=h or 0.02;x0=x0 or 0.090879182417163;y0=y0 or 2.97077458055;z0=z0 or 24.282041054363;mul=mul or 1;add=add or 0;

	return Lorenz2DC:MultiNew{2,minfreq,maxfreq,s,r,b,h,x0,y0,z0}:madd(mul,add)

end

Fhn2DC=UGen:new{name='Fhn2DC'}

function Fhn2DC.kr(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DC:MultiNew{1,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

function Fhn2DC.ar(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DC:MultiNew{2,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

Fhn2DL=UGen:new{name='Fhn2DL'}

function Fhn2DL.kr(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DL:MultiNew{1,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

function Fhn2DL.ar(minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;urate=urate or 0.1;wrate=wrate or 0.1;b0=b0 or 0.6;b1=b1 or 0.8;i=i or 0;u0=u0 or 0;w0=w0 or 0;mul=mul or 1;add=add or 0;

	return Fhn2DL:MultiNew{2,minfreq,maxfreq,urate,wrate,b0,b1,i,u0,w0}:madd(mul,add)

end

Limiter=UGen:new{name='Limiter'}

function Limiter.ar(in_a,level,dur)

	in_a=in_a or 0;level=level or 1;dur=dur or 0.01;

	return Limiter:MultiNew{2,in_a,level,dur}

end

CombL=UGen:new{name='CombL'}

function CombL.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombL:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function CombL.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombL:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

CombC=UGen:new{name='CombC'}

function CombC.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombC:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function CombC.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return CombC:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

AllpassC=UGen:new{name='AllpassC'}

function AllpassC.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassC:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function AllpassC.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassC:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

AllpassN=UGen:new{name='AllpassN'}

function AllpassN.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassN:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function AllpassN.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassN:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

AllpassL=UGen:new{name='AllpassL'}

function AllpassL.kr(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassL:MultiNew{1,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

function AllpassL.ar(in_a,maxdelaytime,delaytime,decaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return AllpassL:MultiNew{2,in_a,maxdelaytime,delaytime,decaytime}:madd(mul,add)

end

BufAllpassC=UGen:new{name='BufAllpassC'}

function BufAllpassC.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufAllpassC:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

BufCombL=UGen:new{name='BufCombL'}

function BufCombL.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufCombL:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

BufCombC=UGen:new{name='BufCombC'}

function BufCombC.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufCombC:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

BufAllpassN=UGen:new{name='BufAllpassN'}

function BufAllpassN.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufAllpassN:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

BufAllpassL=UGen:new{name='BufAllpassL'}

function BufAllpassL.ar(buf,in_a,delaytime,decaytime,mul,add)

	buf=buf or 0;in_a=in_a or 0;delaytime=delaytime or 0.2;decaytime=decaytime or 1;mul=mul or 1;add=add or 0;

	return BufAllpassL:MultiNew{2,buf,in_a,delaytime,decaytime}:madd(mul,add)

end

Clip=UGen:new{name='Clip'}

function Clip.ir(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Clip:MultiNew{0,in_a,lo,hi}

end

function Clip.kr(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Clip:MultiNew{1,in_a,lo,hi}

end

function Clip.ar(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Clip:MultiNew{2,in_a,lo,hi}

end

Fold=UGen:new{name='Fold'}

function Fold.ir(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Fold:MultiNew{0,in_a,lo,hi}

end

function Fold.kr(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Fold:MultiNew{1,in_a,lo,hi}

end

function Fold.ar(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Fold:MultiNew{2,in_a,lo,hi}

end

Schmidt=UGen:new{name='Schmidt'}

function Schmidt.ir(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Schmidt:MultiNew{0,in_a,lo,hi}

end

function Schmidt.kr(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Schmidt:MultiNew{1,in_a,lo,hi}

end

function Schmidt.ar(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Schmidt:MultiNew{2,in_a,lo,hi}

end

Wrap=UGen:new{name='Wrap'}

function Wrap.ir(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Wrap:MultiNew{0,in_a,lo,hi}

end

function Wrap.kr(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Wrap:MultiNew{1,in_a,lo,hi}

end

function Wrap.ar(in_a,lo,hi)

	in_a=in_a or 0;lo=lo or 0;hi=hi or 1;

	return Wrap:MultiNew{2,in_a,lo,hi}

end

Trig=UGen:new{name='Trig'}

function Trig.kr(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return Trig:MultiNew{1,in_a,dur}

end

function Trig.ar(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return Trig:MultiNew{2,in_a,dur}

end

TDelay=UGen:new{name='TDelay'}

function TDelay.kr(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return TDelay:MultiNew{1,in_a,dur}

end

function TDelay.ar(in_a,dur)

	in_a=in_a or 0;dur=dur or 0.1;

	return TDelay:MultiNew{2,in_a,dur}

end

NLFiltL=UGen:new{name='NLFiltL'}

function NLFiltL.kr(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltL:MultiNew{1,input,a,b,d,c,l}:madd(mul,add)

end

function NLFiltL.ar(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltL:MultiNew{2,input,a,b,d,c,l}:madd(mul,add)

end

NLFiltC=UGen:new{name='NLFiltC'}

function NLFiltC.kr(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltC:MultiNew{1,input,a,b,d,c,l}:madd(mul,add)

end

function NLFiltC.ar(input,a,b,d,c,l,mul,add)

	mul=mul or 1;add=add or 0;

	return NLFiltC:MultiNew{2,input,a,b,d,c,l}:madd(mul,add)

end

DelayL=UGen:new{name='DelayL'}

function DelayL.kr(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayL:MultiNew{1,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

function DelayL.ar(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayL:MultiNew{2,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

DelayC=UGen:new{name='DelayC'}

function DelayC.kr(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayC:MultiNew{1,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

function DelayC.ar(in_a,maxdelaytime,delaytime,mul,add)

	in_a=in_a or 0;maxdelaytime=maxdelaytime or 0.2;delaytime=delaytime or 0.2;mul=mul or 1;add=add or 0;

	return DelayC:MultiNew{2,in_a,maxdelaytime,delaytime}:madd(mul,add)

end

Gbman2DL=UGen:new{name='Gbman2DL'}

function Gbman2DL.kr(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DL:MultiNew{1,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

function Gbman2DL.ar(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DL:MultiNew{2,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

Gbman2DC=UGen:new{name='Gbman2DC'}

function Gbman2DC.kr(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 40;maxfreq=maxfreq or 100;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DC:MultiNew{1,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

function Gbman2DC.ar(minfreq,maxfreq,x0,y0,mul,add)

	minfreq=minfreq or 11025;maxfreq=maxfreq or 22050;x0=x0 or 1.2;y0=y0 or 2.1;mul=mul or 1;add=add or 0;

	return Gbman2DC:MultiNew{2,minfreq,maxfreq,x0,y0}:madd(mul,add)

end

MouseY=UGen:new{name='MouseY'}

function MouseY.kr(minval,maxval,warp,lag)

	minval=minval or 0;maxval=maxval or 1;warp=warp or 0;lag=lag or 0.2;

	return MouseY:MultiNew{1,minval,maxval,warp,lag}

end

Panner=MultiOutUGen:new{name='Panner'}

Brusselator=MultiOutUGen:new{name='Brusselator'}

function Brusselator.ar(reset,rate,mu,gamma,initx,inity,mul,add)

	reset=reset or 0;rate=rate or 0.01;mu=mu or 1;gamma=gamma or 1;initx=initx or 0.5;inity=inity or 0.5;mul=mul or 1;add=add or 0;

	return Brusselator:MultiNew{2,reset,rate,mu,gamma,initx,inity}:madd(mul,add)

end

RosslerL=MultiOutUGen:new{name='RosslerL'}

function RosslerL.ar(freq,a,b,c,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a=a or 0.2;b=b or 0.2;c=c or 5.7;h=h or 0.05;xi=xi or 0.1;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return RosslerL:MultiNew{2,freq,a,b,c,h,xi,yi,zi}:madd(mul,add)

end

LADSPA=MultiOutUGen:new{name='LADSPA'}

function LADSPA.ar(nChans,id,args)

	args=args or [  ];

	return LADSPA:MultiNew{2,nChans,id,args}

end

PanX2D=MultiOutUGen:new{name='PanX2D'}

function PanX2D.kr(numChansX,numChansY,in_a,posX,posY,level,widthX,widthY)

	posX=posX or 0;posY=posY or 0;level=level or 1;widthX=widthX or 2;widthY=widthY or 2;

	return PanX2D:MultiNew{1,numChansX,numChansY,in_a,posX,posY,level,widthX,widthY}

end

function PanX2D.ar(numChansX,numChansY,in_a,posX,posY,level,widthX,widthY)

	posX=posX or 0;posY=posY or 0;level=level or 1;widthX=widthX or 2;widthY=widthY or 2;

	return PanX2D:MultiNew{2,numChansX,numChansY,in_a,posX,posY,level,widthX,widthY}

end

Rotate2=MultiOutUGen:new{name='Rotate2'}

function Rotate2.kr(x,y,pos)

	pos=pos or 0;

	return Rotate2:MultiNew{1,x,y,pos}

end

function Rotate2.ar(x,y,pos)

	pos=pos or 0;

	return Rotate2:MultiNew{2,x,y,pos}

end

ArrayMax=MultiOutUGen:new{name='ArrayMax'}

function ArrayMax.kr(array)

		return ArrayMax:MultiNew{1,array}

end

function ArrayMax.ar(array)

		return ArrayMax:MultiNew{2,array}

end

WarpZ=MultiOutUGen:new{name='WarpZ'}

function WarpZ.ar(numChannels,bufnum,pointer,freqScale,windowSize,envbufnum,overlaps,windowRandRatio,interp,zeroSearch,zeroStart,mul,add)

	numChannels=numChannels or 1;bufnum=bufnum or 0;pointer=pointer or 0;freqScale=freqScale or 1;windowSize=windowSize or 0.2;envbufnum=envbufnum or -1;overlaps=overlaps or 8;windowRandRatio=windowRandRatio or 0;interp=interp or 1;zeroSearch=zeroSearch or 0;zeroStart=zeroStart or 0;mul=mul or 1;add=add or 0;

	return WarpZ:MultiNew{2,numChannels,bufnum,pointer,freqScale,windowSize,envbufnum,overlaps,windowRandRatio,interp,zeroSearch,zeroStart}:madd(mul,add)

end

GrainIn=MultiOutUGen:new{name='GrainIn'}

function GrainIn.ar(numChannels,trigger,dur,in_a,pan,envbufnum,maxGrains,mul,add)

	numChannels=numChannels or 1;trigger=trigger or 0;dur=dur or 1;pan=pan or 0;envbufnum=envbufnum or -1;maxGrains=maxGrains or 512;mul=mul or 1;add=add or 0;

	return GrainIn:MultiNew{2,numChannels,trigger,dur,in_a,pan,envbufnum,maxGrains}:madd(mul,add)

end

BeatTrack=MultiOutUGen:new{name='BeatTrack'}

function BeatTrack.kr(chain,lock)

	lock=lock or 0;

	return BeatTrack:MultiNew{1,chain,lock}

end

AbstractIn=MultiOutUGen:new{name='AbstractIn'}

BufMax=MultiOutUGen:new{name='BufMax'}

function BufMax.kr(bufnum,gate)

	bufnum=bufnum or 0;gate=gate or 1;

	return BufMax:MultiNew{1,bufnum,gate}

end

CQ_Diff=MultiOutUGen:new{name='CQ_Diff'}

function CQ_Diff.kr(in1,in2,databufnum)

	in1=in1 or 0;in2=in2 or 0;

	return CQ_Diff:MultiNew{1,in1,in2,databufnum}

end

Demand=MultiOutUGen:new{name='Demand'}

function Demand.kr(trig,reset,demandUGens)

		return Demand:MultiNew{1,trig,reset,demandUGens}

end

function Demand.ar(trig,reset,demandUGens)

		return Demand:MultiNew{2,trig,reset,demandUGens}

end

PanX=MultiOutUGen:new{name='PanX'}

function PanX.kr(numChans,in_a,pos,level,width)

	pos=pos or 0;level=level or 1;width=width or 2;

	return PanX:MultiNew{1,numChans,in_a,pos,level,width}

end

function PanX.ar(numChans,in_a,pos,level,width)

	pos=pos or 0;level=level or 1;width=width or 2;

	return PanX:MultiNew{2,numChans,in_a,pos,level,width}

end

LPCVals=MultiOutUGen:new{name='LPCVals'}

function LPCVals.kr(buffer,pointer)

		return LPCVals:MultiNew{1,buffer,pointer}

end

function LPCVals.ar(buffer,pointer)

		return LPCVals:MultiNew{2,buffer,pointer}

end

DecodeB2=MultiOutUGen:new{name='DecodeB2'}

function DecodeB2.kr(numChans,w,x,y,orientation)

	orientation=orientation or 0.5;

	return DecodeB2:MultiNew{1,numChans,w,x,y,orientation}

end

function DecodeB2.ar(numChans,w,x,y,orientation)

	orientation=orientation or 0.5;

	return DecodeB2:MultiNew{2,numChans,w,x,y,orientation}

end

Pan4=MultiOutUGen:new{name='Pan4'}

function Pan4.kr(in_a,xpos,ypos,level)

	xpos=xpos or 0;ypos=ypos or 0;level=level or 1;

	return Pan4:MultiNew{1,in_a,xpos,ypos,level}

end

function Pan4.ar(in_a,xpos,ypos,level)

	xpos=xpos or 0;ypos=ypos or 0;level=level or 1;

	return Pan4:MultiNew{2,in_a,xpos,ypos,level}

end

Warp1=MultiOutUGen:new{name='Warp1'}

function Warp1.ar(numChannels,bufnum,pointer,freqScale,windowSize,envbufnum,overlaps,windowRandRatio,interp,mul,add)

	numChannels=numChannels or 1;bufnum=bufnum or 0;pointer=pointer or 0;freqScale=freqScale or 1;windowSize=windowSize or 0.2;envbufnum=envbufnum or -1;overlaps=overlaps or 8;windowRandRatio=windowRandRatio or 0;interp=interp or 1;mul=mul or 1;add=add or 0;

	return Warp1:MultiNew{2,numChannels,bufnum,pointer,freqScale,windowSize,envbufnum,overlaps,windowRandRatio,interp}:madd(mul,add)

end

MdaPiano=MultiOutUGen:new{name='MdaPiano'}

function MdaPiano.ar(freq,gate,vel,decay,release,hard,velhard,muffle,velmuff,velcurve,stereo,tune,random,stretch,sustain,mul,add)

	freq=freq or 440;gate=gate or 1;vel=vel or 100;decay=decay or 0.8;release=release or 0.8;hard=hard or 0.8;velhard=velhard or 0.8;muffle=muffle or 0.8;velmuff=velmuff or 0.8;velcurve=velcurve or 0.8;stereo=stereo or 0.2;tune=tune or 0.5;random=random or 0.1;stretch=stretch or 0.1;sustain=sustain or 0;mul=mul or 1;add=add or 0;

	return MdaPiano:MultiNew{2,freq,gate,vel,decay,release,hard,velhard,muffle,velmuff,velcurve,stereo,tune,random,stretch,sustain}:madd(mul,add)

end

GrainSin=MultiOutUGen:new{name='GrainSin'}

function GrainSin.ar(numChannels,trigger,dur,freq,pan,envbufnum,maxGrains,mul,add)

	numChannels=numChannels or 1;trigger=trigger or 0;dur=dur or 1;freq=freq or 440;pan=pan or 0;envbufnum=envbufnum or -1;maxGrains=maxGrains or 512;mul=mul or 1;add=add or 0;

	return GrainSin:MultiNew{2,numChannels,trigger,dur,freq,pan,envbufnum,maxGrains}:madd(mul,add)

end

PanAz=MultiOutUGen:new{name='PanAz'}

function PanAz.kr(numChans,in_a,pos,level,width,orientation)

	pos=pos or 0;level=level or 1;width=width or 2;orientation=orientation or 0.5;

	return PanAz:MultiNew{1,numChans,in_a,pos,level,width,orientation}

end

function PanAz.ar(numChans,in_a,pos,level,width,orientation)

	pos=pos or 0;level=level or 1;width=width or 2;orientation=orientation or 0.5;

	return PanAz:MultiNew{2,numChans,in_a,pos,level,width,orientation}

end

Pitch=MultiOutUGen:new{name='Pitch'}

function Pitch.kr(in_a,initFreq,minFreq,maxFreq,execFreq,maxBinsPerOctave,median,ampThreshold,peakThreshold,downSample,clar)

	in_a=in_a or 0;initFreq=initFreq or 440;minFreq=minFreq or 60;maxFreq=maxFreq or 4000;execFreq=execFreq or 100;maxBinsPerOctave=maxBinsPerOctave or 16;median=median or 1;ampThreshold=ampThreshold or 0.01;peakThreshold=peakThreshold or 0.5;downSample=downSample or 1;clar=clar or 0;

	return Pitch:MultiNew{1,in_a,initFreq,minFreq,maxFreq,execFreq,maxBinsPerOctave,median,ampThreshold,peakThreshold,downSample,clar}

end

FFTPeak=MultiOutUGen:new{name='FFTPeak'}

function FFTPeak.kr(buffer,freqlo,freqhi)

	freqlo=freqlo or 0;freqhi=freqhi or 50000;

	return FFTPeak:MultiNew{1,buffer,freqlo,freqhi}

end

FincoSprottL=MultiOutUGen:new{name='FincoSprottL'}

function FincoSprottL.ar(freq,a,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a=a or 2.45;h=h or 0.05;xi=xi or 0;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return FincoSprottL:MultiNew{2,freq,a,h,xi,yi,zi}:madd(mul,add)

end

VBAP=MultiOutUGen:new{name='VBAP'}

function VBAP.kr(numChans,in_a,bufnum,azimuth,elevation,spread)

	azimuth=azimuth or 0;elevation=elevation or 1;spread=spread or 0;

	return VBAP:MultiNew{1,numChans,in_a,bufnum,azimuth,elevation,spread}

end

function VBAP.ar(numChans,in_a,bufnum,azimuth,elevation,spread)

	azimuth=azimuth or 0;elevation=elevation or 1;spread=spread or 0;

	return VBAP:MultiNew{2,numChans,in_a,bufnum,azimuth,elevation,spread}

end

PlayBuf=MultiOutUGen:new{name='PlayBuf'}

function PlayBuf.kr(numChannels,bufnum,rate,trigger,startPos,loop,doneAction)

	bufnum=bufnum or 0;rate=rate or 1;trigger=trigger or 1;startPos=startPos or 0;loop=loop or 0;doneAction=doneAction or 0;

	return PlayBuf:MultiNew{1,numChannels,bufnum,rate,trigger,startPos,loop,doneAction}

end

function PlayBuf.ar(numChannels,bufnum,rate,trigger,startPos,loop,doneAction)

	bufnum=bufnum or 0;rate=rate or 1;trigger=trigger or 1;startPos=startPos or 0;loop=loop or 0;doneAction=doneAction or 0;

	return PlayBuf:MultiNew{2,numChannels,bufnum,rate,trigger,startPos,loop,doneAction}

end

TGrains3=MultiOutUGen:new{name='TGrains3'}

function TGrains3.ar(numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,att,dec,window,interp)

	trigger=trigger or 0;bufnum=bufnum or 0;rate=rate or 1;centerPos=centerPos or 0;dur=dur or 0.1;pan=pan or 0;amp=amp or 0.1;att=att or 0.5;dec=dec or 0.5;window=window or 1;interp=interp or 4;

	return TGrains3:MultiNew{2,numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,att,dec,window,interp}

end

Balance2=MultiOutUGen:new{name='Balance2'}

function Balance2.kr(left,right,pos,level)

	pos=pos or 0;level=level or 1;

	return Balance2:MultiNew{1,left,right,pos,level}

end

function Balance2.ar(left,right,pos,level)

	pos=pos or 0;level=level or 1;

	return Balance2:MultiNew{2,left,right,pos,level}

end

Spreader=MultiOutUGen:new{name='Spreader'}

function Spreader.ar(in_a,theta,filtsPerOctave,mul,add)

	theta=theta or 1.5707963267949;filtsPerOctave=filtsPerOctave or 8;mul=mul or 1;add=add or 0;

	return Spreader:MultiNew{2,in_a,theta,filtsPerOctave}:madd(mul,add)

end

AtsParInfo=MultiOutUGen:new{name='AtsParInfo'}

function AtsParInfo.kr(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsParInfo:MultiNew{1,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

function AtsParInfo.ar(atsbuffer,partialNum,filePointer,mul,add)

	partialNum=partialNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return AtsParInfo:MultiNew{2,atsbuffer,partialNum,filePointer}:madd(mul,add)

end

UnpackFFT=MultiOutUGen:new{name='UnpackFFT'}

FreeVerb2=MultiOutUGen:new{name='FreeVerb2'}

function FreeVerb2.ar(in_a,in2,mix,room,damp,mul,add)

	mix=mix or 0.33;room=room or 0.5;damp=damp or 0.5;mul=mul or 1;add=add or 0;

	return FreeVerb2:MultiNew{2,in_a,in2,mix,room,damp}:madd(mul,add)

end

SOMRd=MultiOutUGen:new{name='SOMRd'}

function SOMRd.kr(bufnum,inputdata,netsize,numdims,gate)

	netsize=netsize or 10;numdims=numdims or 2;gate=gate or 1;

	return SOMRd:MultiNew{1,bufnum,inputdata,netsize,numdims,gate}

end

function SOMRd.ar(bufnum,inputdata,netsize,numdims,gate)

	netsize=netsize or 10;numdims=numdims or 2;gate=gate or 1;

	return SOMRd:MultiNew{2,bufnum,inputdata,netsize,numdims,gate}

end

RMAFoodChainL=MultiOutUGen:new{name='RMAFoodChainL'}

function RMAFoodChainL.ar(freq,a1,b1,d1,a2,b2,d2,k,r,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a1=a1 or 5;b1=b1 or 3;d1=d1 or 0.4;a2=a2 or 0.1;b2=b2 or 2;d2=d2 or 0.01;k=k or 1.0943;r=r or 0.8904;h=h or 0.05;xi=xi or 0.1;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return RMAFoodChainL:MultiNew{2,freq,a1,b1,d1,a2,b2,d2,k,r,h,xi,yi,zi}:madd(mul,add)

end

GrainFM=MultiOutUGen:new{name='GrainFM'}

function GrainFM.ar(numChannels,trigger,dur,carfreq,modfreq,index,pan,envbufnum,maxGrains,mul,add)

	numChannels=numChannels or 1;trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;pan=pan or 0;envbufnum=envbufnum or -1;maxGrains=maxGrains or 512;mul=mul or 1;add=add or 0;

	return GrainFM:MultiNew{2,numChannels,trigger,dur,carfreq,modfreq,index,pan,envbufnum,maxGrains}:madd(mul,add)

end

Control=MultiOutUGen:new{name='Control'}

function Control.ir(values)

		return Control:MultiNew{0,values}

end

function Control.kr(values)

		return Control:MultiNew{1,values}

end

AudioControl=MultiOutUGen:new{name='AudioControl'}

function AudioControl.ar(values)

		return AudioControl:MultiNew{2,values}

end

TGrains2=MultiOutUGen:new{name='TGrains2'}

function TGrains2.ar(numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,att,dec,interp)

	trigger=trigger or 0;bufnum=bufnum or 0;rate=rate or 1;centerPos=centerPos or 0;dur=dur or 0.1;pan=pan or 0;amp=amp or 0.1;att=att or 0.5;dec=dec or 0.5;interp=interp or 4;

	return TGrains2:MultiNew{2,numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,att,dec,interp}

end

TGrains=MultiOutUGen:new{name='TGrains'}

function TGrains.ar(numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,interp)

	trigger=trigger or 0;bufnum=bufnum or 0;rate=rate or 1;centerPos=centerPos or 0;dur=dur or 0.1;pan=pan or 0;amp=amp or 0.1;interp=interp or 4;

	return TGrains:MultiNew{2,numChannels,trigger,bufnum,rate,centerPos,dur,pan,amp,interp}

end

SpruceBudworm=MultiOutUGen:new{name='SpruceBudworm'}

function SpruceBudworm.ar(reset,rate,k1,k2,alpha,beta,mu,rho,initx,inity,mul,add)

	reset=reset or 0;rate=rate or 0.1;k1=k1 or 27.9;k2=k2 or 1.5;alpha=alpha or 0.1;beta=beta or 10.1;mu=mu or 0.3;rho=rho or 10.1;initx=initx or 0.9;inity=inity or 0.1;mul=mul or 1;add=add or 0;

	return SpruceBudworm:MultiNew{2,reset,rate,k1,k2,alpha,beta,mu,rho,initx,inity}:madd(mul,add)

end

FFTSubbandFlux=MultiOutUGen:new{name='FFTSubbandFlux'}

function FFTSubbandFlux.kr(chain,cutfreqs,posonly)

	posonly=posonly or 0;

	return FFTSubbandFlux:MultiNew{1,chain,cutfreqs,posonly}

end

Foa=MultiOutUGen:new{name='Foa'}

Hilbert=MultiOutUGen:new{name='Hilbert'}

function Hilbert.ar(in_a,mul,add)

	mul=mul or 1;add=add or 0;

	return Hilbert:MultiNew{2,in_a}:madd(mul,add)

end

Tartini=MultiOutUGen:new{name='Tartini'}

function Tartini.kr(in_a,threshold,n,k,overlap,smallCutoff)

	in_a=in_a or 0;threshold=threshold or 0.93;n=n or 2048;k=k or 0;overlap=overlap or 1024;smallCutoff=smallCutoff or 0.5;

	return Tartini:MultiNew{1,in_a,threshold,n,k,overlap,smallCutoff}

end

PVInfo=MultiOutUGen:new{name='PVInfo'}

function PVInfo.kr(pvbuffer,binNum,filePointer,mul,add)

	binNum=binNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return PVInfo:MultiNew{1,pvbuffer,binNum,filePointer}:madd(mul,add)

end

function PVInfo.ar(pvbuffer,binNum,filePointer,mul,add)

	binNum=binNum or 0;filePointer=filePointer or 0;mul=mul or 1;add=add or 0;

	return PVInfo:MultiNew{2,pvbuffer,binNum,filePointer}:madd(mul,add)

end

FincoSprottS=MultiOutUGen:new{name='FincoSprottS'}

function FincoSprottS.ar(freq,a,b,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a=a or 8;b=b or 2;h=h or 0.05;xi=xi or 0;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return FincoSprottS:MultiNew{2,freq,a,b,h,xi,yi,zi}:madd(mul,add)

end

BBlockerBuf=MultiOutUGen:new{name='BBlockerBuf'}

function BBlockerBuf.ar(freq,bufnum,startpoint)

	bufnum=bufnum or 0;startpoint=startpoint or 0;

	return BBlockerBuf:MultiNew{2,freq,bufnum,startpoint}

end

StereoConvolution2L=MultiOutUGen:new{name='StereoConvolution2L'}

function StereoConvolution2L.ar(in_a,kernelL,kernelR,trigger,framesize,crossfade,mul,add)

	trigger=trigger or 0;framesize=framesize or 2048;crossfade=crossfade or 1;mul=mul or 1;add=add or 0;

	return StereoConvolution2L:MultiNew{2,in_a,kernelL,kernelR,trigger,framesize,crossfade}:madd(mul,add)

end

FincoSprottM=MultiOutUGen:new{name='FincoSprottM'}

function FincoSprottM.ar(freq,a,b,h,xi,yi,zi,mul,add)

	freq=freq or 22050;a=a or -7;b=b or 4;h=h or 0.05;xi=xi or 0;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return FincoSprottM:MultiNew{2,freq,a,b,h,xi,yi,zi}:madd(mul,add)

end

PanB2=MultiOutUGen:new{name='PanB2'}

function PanB2.kr(in_a,azimuth,gain)

	azimuth=azimuth or 0;gain=gain or 1;

	return PanB2:MultiNew{1,in_a,azimuth,gain}

end

function PanB2.ar(in_a,azimuth,gain)

	azimuth=azimuth or 0;gain=gain or 1;

	return PanB2:MultiNew{2,in_a,azimuth,gain}

end

DC=MultiOutUGen:new{name='DC'}

function DC.kr(in_a)

	in_a=in_a or 0;

	return DC:MultiNew{1,in_a}

end

function DC.ar(in_a)

	in_a=in_a or 0;

	return DC:MultiNew{2,in_a}

end

Oregonator=MultiOutUGen:new{name='Oregonator'}

function Oregonator.ar(reset,rate,epsilon,mu,q,initx,inity,initz,mul,add)

	reset=reset or 0;rate=rate or 0.01;epsilon=epsilon or 1;mu=mu or 1;q=q or 1;initx=initx or 0.5;inity=inity or 0.5;initz=initz or 0.5;mul=mul or 1;add=add or 0;

	return Oregonator:MultiNew{2,reset,rate,epsilon,mu,q,initx,inity,initz}:madd(mul,add)

end

DiskIn=MultiOutUGen:new{name='DiskIn'}

function DiskIn.ar(numChannels,bufnum,loop)

	loop=loop or 0;

	return DiskIn:MultiNew{2,numChannels,bufnum,loop}

end

GrainBuf=MultiOutUGen:new{name='GrainBuf'}

function GrainBuf.ar(numChannels,trigger,dur,sndbuf,rate,pos,interp,pan,envbufnum,maxGrains,mul,add)

	numChannels=numChannels or 1;trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;interp=interp or 2;pan=pan or 0;envbufnum=envbufnum or -1;maxGrains=maxGrains or 512;mul=mul or 1;add=add or 0;

	return GrainBuf:MultiNew{2,numChannels,trigger,dur,sndbuf,rate,pos,interp,pan,envbufnum,maxGrains}:madd(mul,add)

end

BufRd=MultiOutUGen:new{name='BufRd'}

function BufRd.kr(numChannels,bufnum,phase,loop,interpolation)

	bufnum=bufnum or 0;phase=phase or 0;loop=loop or 1;interpolation=interpolation or 2;

	return BufRd:MultiNew{1,numChannels,bufnum,phase,loop,interpolation}

end

function BufRd.ar(numChannels,bufnum,phase,loop,interpolation)

	bufnum=bufnum or 0;phase=phase or 0;loop=loop or 1;interpolation=interpolation or 2;

	return BufRd:MultiNew{2,numChannels,bufnum,phase,loop,interpolation}

end

PanB=MultiOutUGen:new{name='PanB'}

function PanB.kr(in_a,azimuth,elevation,gain)

	azimuth=azimuth or 0;elevation=elevation or 0;gain=gain or 1;

	return PanB:MultiNew{1,in_a,azimuth,elevation,gain}

end

function PanB.ar(in_a,azimuth,elevation,gain)

	azimuth=azimuth or 0;elevation=elevation or 0;gain=gain or 1;

	return PanB:MultiNew{2,in_a,azimuth,elevation,gain}

end

BinData=MultiOutUGen:new{name='BinData'}

function BinData.kr(buffer,bin,overlaps)

	overlaps=overlaps or 0.5;

	return BinData:MultiNew{1,buffer,bin,overlaps}

end

function BinData.ar(buffer,bin,overlaps)

	overlaps=overlaps or 0.5;

	return BinData:MultiNew{2,buffer,bin,overlaps}

end

VMScan2D=MultiOutUGen:new{name='VMScan2D'}

function VMScan2D.ar(bufnum,mul,add)

	bufnum=bufnum or 0;mul=mul or 1;add=add or 0;

	return VMScan2D:MultiNew{2,bufnum}:madd(mul,add)

end

MFCC=MultiOutUGen:new{name='MFCC'}

function MFCC.kr(chain,numcoeff)

	numcoeff=numcoeff or 13;

	return MFCC:MultiNew{1,chain,numcoeff}

end

Goertzel=MultiOutUGen:new{name='Goertzel'}

function Goertzel.kr(in_a,bufsize,freq,hop)

	in_a=in_a or 0;bufsize=bufsize or 1024;hop=hop or 1;

	return Goertzel:MultiNew{1,in_a,bufsize,freq,hop}

end

GVerb=MultiOutUGen:new{name='GVerb'}

function GVerb.ar(in_a,roomsize,revtime,damping,inputbw,spread,drylevel,earlyreflevel,taillevel,maxroomsize,mul,add)

	roomsize=roomsize or 10;revtime=revtime or 3;damping=damping or 0.5;inputbw=inputbw or 0.5;spread=spread or 15;drylevel=drylevel or 1;earlyreflevel=earlyreflevel or 0.7;taillevel=taillevel or 0.5;maxroomsize=maxroomsize or 300;mul=mul or 1;add=add or 0;

	return GVerb:MultiNew{2,in_a,roomsize,revtime,damping,inputbw,spread,drylevel,earlyreflevel,taillevel,maxroomsize}:madd(mul,add)

end

NearestN=MultiOutUGen:new{name='NearestN'}

function NearestN.kr(treebuf,in_a,gate,num)

	gate=gate or 1;num=num or 1;

	return NearestN:MultiNew{1,treebuf,in_a,gate,num}

end

SOMTrain=MultiOutUGen:new{name='SOMTrain'}

function SOMTrain.kr(bufnum,inputdata,netsize,numdims,traindur,nhood,gate,initweight)

	netsize=netsize or 10;numdims=numdims or 2;traindur=traindur or 5000;nhood=nhood or 0.5;gate=gate or 1;initweight=initweight or 1;

	return SOMTrain:MultiNew{1,bufnum,inputdata,netsize,numdims,traindur,nhood,gate,initweight}

end

LoopBuf=MultiOutUGen:new{name='LoopBuf'}

function LoopBuf.ar(numChannels,bufnum,rate,gate,startPos,startLoop,endLoop,interpolation)

	bufnum=bufnum or 0;rate=rate or 1;gate=gate or 1;startPos=startPos or 0;interpolation=interpolation or 2;

	return LoopBuf:MultiNew{2,numChannels,bufnum,rate,gate,startPos,startLoop,endLoop,interpolation}

end

Qitch=MultiOutUGen:new{name='Qitch'}

function Qitch.kr(in_a,databufnum,ampThreshold,algoflag,ampbufnum,minfreq,maxfreq)

	in_a=in_a or 0;ampThreshold=ampThreshold or 0.01;algoflag=algoflag or 1;minfreq=minfreq or 0;maxfreq=maxfreq or 2500;

	return Qitch:MultiNew{1,in_a,databufnum,ampThreshold,algoflag,ampbufnum,minfreq,maxfreq}

end

BFPanner=MultiOutUGen:new{name='BFPanner'}

FFTSubbandFlatness=MultiOutUGen:new{name='FFTSubbandFlatness'}

function FFTSubbandFlatness.kr(chain,cutfreqs)

		return FFTSubbandFlatness:MultiNew{1,chain,cutfreqs}

end

FFTSubbandPower=MultiOutUGen:new{name='FFTSubbandPower'}

function FFTSubbandPower.kr(chain,cutfreqs,square,scalemode)

	square=square or 1;scalemode=scalemode or 1;

	return FFTSubbandPower:MultiNew{1,chain,cutfreqs,square,scalemode}

end

Pan2=MultiOutUGen:new{name='Pan2'}

function Pan2.kr(in_a,pos,level)

	pos=pos or 0;level=level or 1;

	return Pan2:MultiNew{1,in_a,pos,level}

end

function Pan2.ar(in_a,pos,level)

	pos=pos or 0;level=level or 1;

	return Pan2:MultiNew{2,in_a,pos,level}

end

FoaPanB=MultiOutUGen:new{name='FoaPanB'}

function FoaPanB.ar(in_a,azimuth,elevation,mul,add)

	azimuth=azimuth or 0;elevation=elevation or 0;mul=mul or 1;add=add or 0;

	return FoaPanB:MultiNew{2,in_a,azimuth,elevation}:madd(mul,add)

end

BiPanB2=MultiOutUGen:new{name='BiPanB2'}

function BiPanB2.kr(inA,inB,azimuth,gain)

	gain=gain or 1;

	return BiPanB2:MultiNew{1,inA,inB,azimuth,gain}

end

function BiPanB2.ar(inA,inB,azimuth,gain)

	gain=gain or 1;

	return BiPanB2:MultiNew{2,inA,inB,azimuth,gain}

end

BeatTrack2=MultiOutUGen:new{name='BeatTrack2'}

function BeatTrack2.kr(busindex,numfeatures,windowsize,phaseaccuracy,lock,weightingscheme)

	windowsize=windowsize or 2;phaseaccuracy=phaseaccuracy or 0.02;lock=lock or 0;

	return BeatTrack2:MultiNew{1,busindex,numfeatures,windowsize,phaseaccuracy,lock,weightingscheme}

end

SMS=MultiOutUGen:new{name='SMS'}

function SMS.ar(input,maxpeaks,currentpeaks,tolerance,noisefloor,freqmult,freqadd,formantpreserve,useifft,ampmult,graphicsbufnum,mul,add)

	maxpeaks=maxpeaks or 80;currentpeaks=currentpeaks or 80;tolerance=tolerance or 4;noisefloor=noisefloor or 0.2;freqmult=freqmult or 1;freqadd=freqadd or 0;formantpreserve=formantpreserve or 0;useifft=useifft or 0;ampmult=ampmult or 1;mul=mul or 1;add=add or 0;

	return SMS:MultiNew{2,input,maxpeaks,currentpeaks,tolerance,noisefloor,freqmult,freqadd,formantpreserve,useifft,ampmult,graphicsbufnum}:madd(mul,add)

end

VDiskIn=MultiOutUGen:new{name='VDiskIn'}

function VDiskIn.ar(numChannels,bufnum,rate,loop,sendID)

	rate=rate or 1;loop=loop or 0;sendID=sendID or 0;

	return VDiskIn:MultiNew{2,numChannels,bufnum,rate,loop,sendID}

end

JoshMultiOutGrain=MultiOutUGen:new{name='JoshMultiOutGrain'}

JoshMultiChannelGrain=MultiOutUGen:new{name='JoshMultiChannelGrain'}

ArrayMin=MultiOutUGen:new{name='ArrayMin'}

function ArrayMin.kr(array)

		return ArrayMin:MultiNew{1,array}

end

function ArrayMin.ar(array)

		return ArrayMin:MultiNew{2,array}

end

LocalIn=MultiOutUGen:new{name='LocalIn'}

function LocalIn.kr(numChannels,default)

	numChannels=numChannels or 1;default=default or 0;

	return LocalIn:MultiNew{1,numChannels,default}

end

function LocalIn.ar(numChannels,default)

	numChannels=numChannels or 1;default=default or 0;

	return LocalIn:MultiNew{2,numChannels,default}

end

SharedIn=MultiOutUGen:new{name='SharedIn'}

function SharedIn.kr(bus,numChannels)

	bus=bus or 0;numChannels=numChannels or 1;

	return SharedIn:MultiNew{1,bus,numChannels}

end

LagIn=MultiOutUGen:new{name='LagIn'}

function LagIn.kr(bus,numChannels,lag)

	bus=bus or 0;numChannels=numChannels or 1;lag=lag or 0.1;

	return LagIn:MultiNew{1,bus,numChannels,lag}

end

InFeedback=MultiOutUGen:new{name='InFeedback'}

function InFeedback.ar(bus,numChannels)

	bus=bus or 0;numChannels=numChannels or 1;

	return InFeedback:MultiNew{2,bus,numChannels}

end

InTrig=MultiOutUGen:new{name='InTrig'}

function InTrig.kr(bus,numChannels)

	bus=bus or 0;numChannels=numChannels or 1;

	return InTrig:MultiNew{1,bus,numChannels}

end

In=MultiOutUGen:new{name='In'}

function In.kr(bus,numChannels)

	bus=bus or 0;numChannels=numChannels or 1;

	return In:MultiNew{1,bus,numChannels}

end

function In.ar(bus,numChannels)

	bus=bus or 0;numChannels=numChannels or 1;

	return In:MultiNew{2,bus,numChannels}

end

BufMin=MultiOutUGen:new{name='BufMin'}

function BufMin.kr(bufnum,gate)

	bufnum=bufnum or 0;gate=gate or 1;

	return BufMin:MultiNew{1,bufnum,gate}

end

LagControl=MultiOutUGen:new{name='LagControl'}

function LagControl.ir()

		return LagControl:MultiNew{0}

end

function LagControl.kr(values,lags)

		return LagControl:MultiNew{1,values,lags}

end

TrigControl=MultiOutUGen:new{name='TrigControl'}

function TrigControl.ir(values)

		return TrigControl:MultiNew{0,values}

end

function TrigControl.kr(values)

		return TrigControl:MultiNew{1,values}

end

FoaRotate=MultiOutUGen:new{name='FoaRotate'}

function FoaRotate.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaRotate:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaProximity=MultiOutUGen:new{name='FoaProximity'}

function FoaProximity.ar(in_a,distance,mul,add)

	distance=distance or 1;mul=mul or 1;add=add or 0;

	return FoaProximity:MultiNew{2,in_a,distance}:madd(mul,add)

end

FoaDirectX=MultiOutUGen:new{name='FoaDirectX'}

function FoaDirectX.ar(in_a,angle,mul,add)

	mul=mul or 1;add=add or 0;

	return FoaDirectX:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPsychoShelf=MultiOutUGen:new{name='FoaPsychoShelf'}

function FoaPsychoShelf.ar(in_a,freq,k0,k1,mul,add)

	freq=freq or 400;mul=mul or 1;add=add or 0;

	return FoaPsychoShelf:MultiNew{2,in_a,freq,k0,k1}:madd(mul,add)

end

FoaDirectO=MultiOutUGen:new{name='FoaDirectO'}

function FoaDirectO.ar(in_a,angle,mul,add)

	mul=mul or 1;add=add or 0;

	return FoaDirectO:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaDominateX=MultiOutUGen:new{name='FoaDominateX'}

function FoaDominateX.ar(in_a,gain,mul,add)

	gain=gain or 0;mul=mul or 1;add=add or 0;

	return FoaDominateX:MultiNew{2,in_a,gain}:madd(mul,add)

end

FoaNFC=MultiOutUGen:new{name='FoaNFC'}

function FoaNFC.ar(in_a,distance,mul,add)

	distance=distance or 1;mul=mul or 1;add=add or 0;

	return FoaNFC:MultiNew{2,in_a,distance}:madd(mul,add)

end

FoaPushY=MultiOutUGen:new{name='FoaPushY'}

function FoaPushY.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPushY:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaFocusX=MultiOutUGen:new{name='FoaFocusX'}

function FoaFocusX.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaFocusX:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaAsymmetry=MultiOutUGen:new{name='FoaAsymmetry'}

function FoaAsymmetry.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaAsymmetry:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPushZ=MultiOutUGen:new{name='FoaPushZ'}

function FoaPushZ.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPushZ:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPushX=MultiOutUGen:new{name='FoaPushX'}

function FoaPushX.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPushX:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaFocusZ=MultiOutUGen:new{name='FoaFocusZ'}

function FoaFocusZ.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaFocusZ:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaZoomX=MultiOutUGen:new{name='FoaZoomX'}

function FoaZoomX.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaZoomX:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPressX=MultiOutUGen:new{name='FoaPressX'}

function FoaPressX.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPressX:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaZoomY=MultiOutUGen:new{name='FoaZoomY'}

function FoaZoomY.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaZoomY:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPressZ=MultiOutUGen:new{name='FoaPressZ'}

function FoaPressZ.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPressZ:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaFocusY=MultiOutUGen:new{name='FoaFocusY'}

function FoaFocusY.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaFocusY:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaTilt=MultiOutUGen:new{name='FoaTilt'}

function FoaTilt.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaTilt:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaTumble=MultiOutUGen:new{name='FoaTumble'}

function FoaTumble.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaTumble:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaZoomZ=MultiOutUGen:new{name='FoaZoomZ'}

function FoaZoomZ.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaZoomZ:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaPressY=MultiOutUGen:new{name='FoaPressY'}

function FoaPressY.ar(in_a,angle,mul,add)

	angle=angle or 0;mul=mul or 1;add=add or 0;

	return FoaPressY:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaDirectZ=MultiOutUGen:new{name='FoaDirectZ'}

function FoaDirectZ.ar(in_a,angle,mul,add)

	mul=mul or 1;add=add or 0;

	return FoaDirectZ:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaDirectY=MultiOutUGen:new{name='FoaDirectY'}

function FoaDirectY.ar(in_a,angle,mul,add)

	mul=mul or 1;add=add or 0;

	return FoaDirectY:MultiNew{2,in_a,angle}:madd(mul,add)

end

FoaDominateZ=MultiOutUGen:new{name='FoaDominateZ'}

function FoaDominateZ.ar(in_a,gain,mul,add)

	gain=gain or 0;mul=mul or 1;add=add or 0;

	return FoaDominateZ:MultiNew{2,in_a,gain}:madd(mul,add)

end

FoaDominateY=MultiOutUGen:new{name='FoaDominateY'}

function FoaDominateY.ar(in_a,gain,mul,add)

	gain=gain or 0;mul=mul or 1;add=add or 0;

	return FoaDominateY:MultiNew{2,in_a,gain}:madd(mul,add)

end

A2B=MultiOutUGen:new{name='A2B'}

function A2B.ar(a,b,c,d)

		return A2B:MultiNew{2,a,b,c,d}

end

BFEncode1=MultiOutUGen:new{name='BFEncode1'}

function BFEncode1.ar(in_a,azimuth,elevation,rho,gain,wComp)

	azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;gain=gain or 1;wComp=wComp or 0;

	return BFEncode1:MultiNew{2,in_a,azimuth,elevation,rho,gain,wComp}

end

Rotate=MultiOutUGen:new{name='Rotate'}

function Rotate.ar(w,x,y,z,rotate)

		return Rotate:MultiNew{2,w,x,y,z,rotate}

end

Tilt=MultiOutUGen:new{name='Tilt'}

function Tilt.ar(w,x,y,z,tilt)

		return Tilt:MultiNew{2,w,x,y,z,tilt}

end

Tumble=MultiOutUGen:new{name='Tumble'}

function Tumble.ar(w,x,y,z,tilt)

		return Tumble:MultiNew{2,w,x,y,z,tilt}

end

BFEncodeSter=MultiOutUGen:new{name='BFEncodeSter'}

function BFEncodeSter.ar(l,r,azimuth,width,elevation,rho,gain,wComp)

	azimuth=azimuth or 0;width=width or 1.5707963267949;elevation=elevation or 0;rho=rho or 1;gain=gain or 1;wComp=wComp or 0;

	return BFEncodeSter:MultiNew{2,l,r,azimuth,width,elevation,rho,gain,wComp}

end

B2A=MultiOutUGen:new{name='B2A'}

function B2A.ar(w,x,y,z)

		return B2A:MultiNew{2,w,x,y,z}

end

UHJ2B=MultiOutUGen:new{name='UHJ2B'}

function UHJ2B.ar(ls,rs)

		return UHJ2B:MultiNew{2,ls,rs}

end

BFManipulate=MultiOutUGen:new{name='BFManipulate'}

function BFManipulate.ar(w,x,y,z,rotate,tilt,tumble)

	rotate=rotate or 0;tilt=tilt or 0;tumble=tumble or 0;

	return BFManipulate:MultiNew{2,w,x,y,z,rotate,tilt,tumble}

end

FMHEncode2=MultiOutUGen:new{name='FMHEncode2'}

function FMHEncode2.ar(in_a,point_x,point_y,elevation,gain,wComp)

	point_x=point_x or 0;point_y=point_y or 0;elevation=elevation or 0;gain=gain or 1;wComp=wComp or 0;

	return FMHEncode2:MultiNew{2,in_a,point_x,point_y,elevation,gain,wComp}

end

B2UHJ=MultiOutUGen:new{name='B2UHJ'}

function B2UHJ.ar(w,x,y)

		return B2UHJ:MultiNew{2,w,x,y}

end

FMHEncode0=MultiOutUGen:new{name='FMHEncode0'}

function FMHEncode0.ar(in_a,azimuth,elevation,gain)

	azimuth=azimuth or 0;elevation=elevation or 0;gain=gain or 1;

	return FMHEncode0:MultiNew{2,in_a,azimuth,elevation,gain}

end

FMHEncode1=MultiOutUGen:new{name='FMHEncode1'}

function FMHEncode1.ar(in_a,azimuth,elevation,rho,gain,wComp)

	azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;gain=gain or 1;wComp=wComp or 0;

	return FMHEncode1:MultiNew{2,in_a,azimuth,elevation,rho,gain,wComp}

end

B2Ster=MultiOutUGen:new{name='B2Ster'}

function B2Ster.ar(w,x,y,mul,add)

	mul=mul or 1;add=add or 0;

	return B2Ster:MultiNew{2,w,x,y}:madd(mul,add)

end

BFEncode2=MultiOutUGen:new{name='BFEncode2'}

function BFEncode2.ar(in_a,point_x,point_y,elevation,gain,wComp)

	point_x=point_x or 1;point_y=point_y or 1;elevation=elevation or 0;gain=gain or 1;wComp=wComp or 0;

	return BFEncode2:MultiNew{2,in_a,point_x,point_y,elevation,gain,wComp}

end

LinPan2=MultiOutUGen:new{name='LinPan2'}

function LinPan2.kr(in_a,pos,level)

	pos=pos or 0;level=level or 1;

	return LinPan2:MultiNew{1,in_a,pos,level}

end

function LinPan2.ar(in_a,pos,level)

	pos=pos or 0;level=level or 1;

	return LinPan2:MultiNew{2,in_a,pos,level}

end

FMGrainIBF=MultiOutUGen:new{name='FMGrainIBF'}

function FMGrainIBF.ar(trigger,dur,carfreq,modfreq,index,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;ifac=ifac or 0.5;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return FMGrainIBF:MultiNew{2,trigger,dur,carfreq,modfreq,index,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp}:madd(mul,add)

end

BufGrainBF=MultiOutUGen:new{name='BufGrainBF'}

function BufGrainBF.ar(trigger,dur,sndbuf,rate,pos,azimuth,elevation,rho,interp,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;interp=interp or 2;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return BufGrainBF:MultiNew{2,trigger,dur,sndbuf,rate,pos,azimuth,elevation,rho,interp,wComp}:madd(mul,add)

end

SinGrainBBF=MultiOutUGen:new{name='SinGrainBBF'}

function SinGrainBBF.ar(trigger,dur,freq,envbuf,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return SinGrainBBF:MultiNew{2,trigger,dur,freq,envbuf,azimuth,elevation,rho,wComp}:madd(mul,add)

end

BufGrainIBF=MultiOutUGen:new{name='BufGrainIBF'}

function BufGrainIBF.ar(trigger,dur,sndbuf,rate,pos,envbuf1,envbuf2,ifac,azimuth,elevation,rho,interp,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;ifac=ifac or 0.5;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;interp=interp or 2;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return BufGrainIBF:MultiNew{2,trigger,dur,sndbuf,rate,pos,envbuf1,envbuf2,ifac,azimuth,elevation,rho,interp,wComp}:madd(mul,add)

end

FMGrainBBF=MultiOutUGen:new{name='FMGrainBBF'}

function FMGrainBBF.ar(trigger,dur,carfreq,modfreq,index,envbuf,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return FMGrainBBF:MultiNew{2,trigger,dur,carfreq,modfreq,index,envbuf,azimuth,elevation,rho,wComp}:madd(mul,add)

end

SinGrainIBF=MultiOutUGen:new{name='SinGrainIBF'}

function SinGrainIBF.ar(trigger,dur,freq,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;ifac=ifac or 0.5;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return SinGrainIBF:MultiNew{2,trigger,dur,freq,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp}:madd(mul,add)

end

BFGrainPanner=MultiOutUGen:new{name='BFGrainPanner'}

SinGrainBF=MultiOutUGen:new{name='SinGrainBF'}

function SinGrainBF.ar(trigger,dur,freq,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;freq=freq or 440;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return SinGrainBF:MultiNew{2,trigger,dur,freq,azimuth,elevation,rho,wComp}:madd(mul,add)

end

FMGrainBF=MultiOutUGen:new{name='FMGrainBF'}

function FMGrainBF.ar(trigger,dur,carfreq,modfreq,index,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;carfreq=carfreq or 440;modfreq=modfreq or 200;index=index or 1;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return FMGrainBF:MultiNew{2,trigger,dur,carfreq,modfreq,index,azimuth,elevation,rho,wComp}:madd(mul,add)

end

BufGrainBBF=MultiOutUGen:new{name='BufGrainBBF'}

function BufGrainBBF.ar(trigger,dur,sndbuf,rate,pos,envbuf,azimuth,elevation,rho,interp,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;rate=rate or 1;pos=pos or 0;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;interp=interp or 2;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return BufGrainBBF:MultiNew{2,trigger,dur,sndbuf,rate,pos,envbuf,azimuth,elevation,rho,interp,wComp}:madd(mul,add)

end

InGrainBBF=MultiOutUGen:new{name='InGrainBBF'}

function InGrainBBF.ar(trigger,dur,in_a,envbuf,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return InGrainBBF:MultiNew{2,trigger,dur,in_a,envbuf,azimuth,elevation,rho,wComp}:madd(mul,add)

end

InGrainBF=MultiOutUGen:new{name='InGrainBF'}

function InGrainBF.ar(trigger,dur,in_a,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return InGrainBF:MultiNew{2,trigger,dur,in_a,azimuth,elevation,rho,wComp}:madd(mul,add)

end

InGrainIBF=MultiOutUGen:new{name='InGrainIBF'}

function InGrainIBF.ar(trigger,dur,in_a,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp,mul,add)

	trigger=trigger or 0;dur=dur or 1;ifac=ifac or 0.5;azimuth=azimuth or 0;elevation=elevation or 0;rho=rho or 1;wComp=wComp or 0;mul=mul or 1;add=add or 0;

	return InGrainIBF:MultiNew{2,trigger,dur,in_a,envbuf1,envbuf2,ifac,azimuth,elevation,rho,wComp}:madd(mul,add)

end

MonoGrainBF=MultiOutUGen:new{name='MonoGrainBF'}

function MonoGrainBF.ar(in_a,winsize,grainrate,winrandpct,azimuth,azrand,elevation,elrand,rho,mul,add)

	winsize=winsize or 0.1;grainrate=grainrate or 10;winrandpct=winrandpct or 0;azimuth=azimuth or 0;azrand=azrand or 0;elevation=elevation or 0;elrand=elrand or 0;rho=rho or 1;mul=mul or 1;add=add or 0;

	return MonoGrainBF:MultiNew{2,in_a,winsize,grainrate,winrandpct,azimuth,azrand,elevation,elrand,rho}:madd(mul,add)

end

LFBrownNoise1=UGen:new{name='LFBrownNoise1'}

function LFBrownNoise1.kr(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise1:MultiNew{1,freq,dev,dist}:madd(mul,add)

end

function LFBrownNoise1.ar(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise1:MultiNew{2,freq,dev,dist}:madd(mul,add)

end

LFBrownNoise2=UGen:new{name='LFBrownNoise2'}

function LFBrownNoise2.kr(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise2:MultiNew{1,freq,dev,dist}:madd(mul,add)

end

function LFBrownNoise2.ar(freq,dev,dist,mul,add)

	freq=freq or 20;dev=dev or 1;dist=dist or 0;mul=mul or 1;add=add or 0;

	return LFBrownNoise2:MultiNew{2,freq,dev,dist}:madd(mul,add)

end

FBSineN=UGen:new{name='FBSineN'}

function FBSineN.ar(freq,im,fb,a,c,xi,yi,mul,add)

	freq=freq or 22050;im=im or 1;fb=fb or 0.1;a=a or 1.1;c=c or 0.5;xi=xi or 0.1;yi=yi or 0.1;mul=mul or 1;add=add or 0;

	return FBSineN:MultiNew{2,freq,im,fb,a,c,xi,yi}:madd(mul,add)

end

LatoocarfianN=UGen:new{name='LatoocarfianN'}

function LatoocarfianN.ar(freq,a,b,c,d,xi,yi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;xi=xi or 0.5;yi=yi or 0.5;mul=mul or 1;add=add or 0;

	return LatoocarfianN:MultiNew{2,freq,a,b,c,d,xi,yi}:madd(mul,add)

end

QuadN=UGen:new{name='QuadN'}

function QuadN.ar(freq,a,b,c,xi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or -1;c=c or -0.75;xi=xi or 0;mul=mul or 1;add=add or 0;

	return QuadN:MultiNew{2,freq,a,b,c,xi}:madd(mul,add)

end

HenonN=UGen:new{name='HenonN'}

function HenonN.ar(freq,a,b,x0,x1,mul,add)

	freq=freq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0;x1=x1 or 0;mul=mul or 1;add=add or 0;

	return HenonN:MultiNew{2,freq,a,b,x0,x1}:madd(mul,add)

end

LinCongN=UGen:new{name='LinCongN'}

function LinCongN.ar(freq,a,c,m,xi,mul,add)

	freq=freq or 22050;a=a or 1.1;c=c or 0.13;m=m or 1;xi=xi or 0;mul=mul or 1;add=add or 0;

	return LinCongN:MultiNew{2,freq,a,c,m,xi}:madd(mul,add)

end

LorenzL=UGen:new{name='LorenzL'}

function LorenzL.ar(freq,s,r,b,h,xi,yi,zi,mul,add)

	freq=freq or 22050;s=s or 10;r=r or 28;b=b or 2.667;h=h or 0.05;xi=xi or 0.1;yi=yi or 0;zi=zi or 0;mul=mul or 1;add=add or 0;

	return LorenzL:MultiNew{2,freq,s,r,b,h,xi,yi,zi}:madd(mul,add)

end

StandardN=UGen:new{name='StandardN'}

function StandardN.ar(freq,k,xi,yi,mul,add)

	freq=freq or 22050;k=k or 1;xi=xi or 0.5;yi=yi or 0;mul=mul or 1;add=add or 0;

	return StandardN:MultiNew{2,freq,k,xi,yi}:madd(mul,add)

end

GbmanN=UGen:new{name='GbmanN'}

function GbmanN.ar(freq,xi,yi,mul,add)

	freq=freq or 22050;xi=xi or 1.2;yi=yi or 2.1;mul=mul or 1;add=add or 0;

	return GbmanN:MultiNew{2,freq,xi,yi}:madd(mul,add)

end

CuspN=UGen:new{name='CuspN'}

function CuspN.ar(freq,a,b,xi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or 1.9;xi=xi or 0;mul=mul or 1;add=add or 0;

	return CuspN:MultiNew{2,freq,a,b,xi}:madd(mul,add)

end

FBSineC=UGen:new{name='FBSineC'}

function FBSineC.ar(freq,im,fb,a,c,xi,yi,mul,add)

	freq=freq or 22050;im=im or 1;fb=fb or 0.1;a=a or 1.1;c=c or 0.5;xi=xi or 0.1;yi=yi or 0.1;mul=mul or 1;add=add or 0;

	return FBSineC:MultiNew{2,freq,im,fb,a,c,xi,yi}:madd(mul,add)

end

FBSineL=UGen:new{name='FBSineL'}

function FBSineL.ar(freq,im,fb,a,c,xi,yi,mul,add)

	freq=freq or 22050;im=im or 1;fb=fb or 0.1;a=a or 1.1;c=c or 0.5;xi=xi or 0.1;yi=yi or 0.1;mul=mul or 1;add=add or 0;

	return FBSineL:MultiNew{2,freq,im,fb,a,c,xi,yi}:madd(mul,add)

end

LatoocarfianC=UGen:new{name='LatoocarfianC'}

function LatoocarfianC.ar(freq,a,b,c,d,xi,yi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;xi=xi or 0.5;yi=yi or 0.5;mul=mul or 1;add=add or 0;

	return LatoocarfianC:MultiNew{2,freq,a,b,c,d,xi,yi}:madd(mul,add)

end

LatoocarfianL=UGen:new{name='LatoocarfianL'}

function LatoocarfianL.ar(freq,a,b,c,d,xi,yi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or 3;c=c or 0.5;d=d or 0.5;xi=xi or 0.5;yi=yi or 0.5;mul=mul or 1;add=add or 0;

	return LatoocarfianL:MultiNew{2,freq,a,b,c,d,xi,yi}:madd(mul,add)

end

QuadL=UGen:new{name='QuadL'}

function QuadL.ar(freq,a,b,c,xi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or -1;c=c or -0.75;xi=xi or 0;mul=mul or 1;add=add or 0;

	return QuadL:MultiNew{2,freq,a,b,c,xi}:madd(mul,add)

end

QuadC=UGen:new{name='QuadC'}

function QuadC.ar(freq,a,b,c,xi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or -1;c=c or -0.75;xi=xi or 0;mul=mul or 1;add=add or 0;

	return QuadC:MultiNew{2,freq,a,b,c,xi}:madd(mul,add)

end

HenonL=UGen:new{name='HenonL'}

function HenonL.ar(freq,a,b,x0,x1,mul,add)

	freq=freq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0;x1=x1 or 0;mul=mul or 1;add=add or 0;

	return HenonL:MultiNew{2,freq,a,b,x0,x1}:madd(mul,add)

end

HenonC=UGen:new{name='HenonC'}

function HenonC.ar(freq,a,b,x0,x1,mul,add)

	freq=freq or 22050;a=a or 1.4;b=b or 0.3;x0=x0 or 0;x1=x1 or 0;mul=mul or 1;add=add or 0;

	return HenonC:MultiNew{2,freq,a,b,x0,x1}:madd(mul,add)

end

LinCongL=UGen:new{name='LinCongL'}

function LinCongL.ar(freq,a,c,m,xi,mul,add)

	freq=freq or 22050;a=a or 1.1;c=c or 0.13;m=m or 1;xi=xi or 0;mul=mul or 1;add=add or 0;

	return LinCongL:MultiNew{2,freq,a,c,m,xi}:madd(mul,add)

end

LinCongC=UGen:new{name='LinCongC'}

function LinCongC.ar(freq,a,c,m,xi,mul,add)

	freq=freq or 22050;a=a or 1.1;c=c or 0.13;m=m or 1;xi=xi or 0;mul=mul or 1;add=add or 0;

	return LinCongC:MultiNew{2,freq,a,c,m,xi}:madd(mul,add)

end

StandardL=UGen:new{name='StandardL'}

function StandardL.ar(freq,k,xi,yi,mul,add)

	freq=freq or 22050;k=k or 1;xi=xi or 0.5;yi=yi or 0;mul=mul or 1;add=add or 0;

	return StandardL:MultiNew{2,freq,k,xi,yi}:madd(mul,add)

end

GbmanL=UGen:new{name='GbmanL'}

function GbmanL.ar(freq,xi,yi,mul,add)

	freq=freq or 22050;xi=xi or 1.2;yi=yi or 2.1;mul=mul or 1;add=add or 0;

	return GbmanL:MultiNew{2,freq,xi,yi}:madd(mul,add)

end

CuspL=UGen:new{name='CuspL'}

function CuspL.ar(freq,a,b,xi,mul,add)

	freq=freq or 22050;a=a or 1;b=b or 1.9;xi=xi or 0;mul=mul or 1;add=add or 0;

	return CuspL:MultiNew{2,freq,a,b,xi}:madd(mul,add)

end

PV_Cutoff=UGen:new{name='PV_Cutoff'}

Gendy5=UGen:new{name='Gendy5'}

function Gendy5.kr(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 20;maxfreq=maxfreq or 1000;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy5:MultiNew{1,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

function Gendy5.ar(ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum,mul,add)

	ampdist=ampdist or 1;durdist=durdist or 1;adparam=adparam or 1;ddparam=ddparam or 1;minfreq=minfreq or 440;maxfreq=maxfreq or 660;ampscale=ampscale or 0.5;durscale=durscale or 0.5;initCPs=initCPs or 12;mul=mul or 1;add=add or 0;

	return Gendy5:MultiNew{2,ampdist,durdist,adparam,ddparam,minfreq,maxfreq,ampscale,durscale,initCPs,knum}:madd(mul,add)

end

failed classes are

[  ]

