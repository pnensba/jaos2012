// -*- mode:sclang; mode: outline-minor; coding:utf-8 -*-
s.boot
MIDIIn.connect(0,3);
d = d ? ();
d.keyb = 0.dup(110);
~mod = Bus.new('control',0,1);
MIDIIn.control = {arg src, chan, num, vel; ~mod.set((vel/127)+1)};
MIDIIn.noteOn = {arg src, chan, num, vel; d.keyb[num].set(\amp,vel/127)};
MIDIIn.noteOff = {arg src, chan, num, vel; d.keyb[num].set(\amp, 0)};
~keyb = {
  for (48,72, {|no| d.keyb[no].free;d.keyb[no] = Synth(\blip, [\freq, no.midicps])})
};


SynthDef.new("blip", {|freq=440 amp=0|
 Out.ar(0, amp/3*SinOsc.ar(freq.dup(2)));
}).send(s);~keyb.();


if (0==1, {
  SynthDef.new("blip", {|freq=440 amp=0|
	Out.ar(0, amp/3*SinOsc.ar([freq,freq+1]));
  }).send(s);~keyb.();
  
  
  // hammond d�timbré
  SynthDef.new("blip", {|freq=440 amp=0|
	Out.ar(0, amp/3*SinOsc.ar(~mod.kr*[freq,freq+7,freq+10,freq+21]));
  }).send(s);~keyb.();
  
  SynthDef.new("blip", {|freq=440 amp=0|
  Out.ar(0, amp/3*SinOsc.ar([freq,freq+7,freq+10,freq+21]));
  }).send(s);~keyb.();
  
  // hammond détimbré
  
  SynthDef.new("blip", {|freq=440 amp=0, mod=1|
	Out.ar(0, amp/3*SinOsc.kr(10)*SinOsc.ar(~mod.kr*[freq-7, freq-5, freq,freq+7,freq+10,freq+21]));
  }).send(s);~keyb.();
  
  SynthDef.new("blip", {|freq=440 amp=0, mod=1|
	Out.ar(0, amp/3*SinOsc.ar(WhiteNoise.kr(1)+~mod.kr*[freq-7, freq-5, freq,freq+7,freq+10,freq+21]));
  }).send(s);~keyb.();  
})
