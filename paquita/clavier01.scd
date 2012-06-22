s.boot;
m = ();
MIDIIn.connectAll;

MIDIFunc.noteOn({|vel note| m.s.set(\amp,vel/127,\freq,note.midicps);})
MIDIFunc.noteOff({|vel note| m.s.set(\amp,0.1);})
MIDIFunc.noteOff({1.postln})
(
SynthDef.new("ghj", {|freq=440|
 Out.ar(0, NamedControl.kr(\amp,1,0.2)*SinOsc.ar(freq.dup(2)));
}).load(s);
)


SynthDef.new("ghj", {Out.ar(0, \amp.kr(1,0.01)*SinOsc.ar(\freq.kr(200,0.01).dup(2)));}).load(s);

m.s.free
m.s = Synth.new(\ghj)


