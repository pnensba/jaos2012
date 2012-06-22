s.boot;
m = ();
MIDIIn.connectAll;

MIDIFunc.noteOn({|vel note| m.s.set(\amp,vel/1000,\freq, note.midicps);})
MIDIFunc.noteOff({|vel note| m.s.set(\amp,0);})
MIDIFunc.noteOff({1.postln})

SynthDef.new("ghj", {Out.ar(0, \amp.kr(1,0.01)*SinOsc.ar(\freq.kr(200,0.01)));}).load(s);

m.s.free
m.s = Synth.new(\ghj)

d.keyb = 0.dup(110);
~keyb = {for (48,72, {|no| d.keyb[no].free;d.keyb[no] = Synth(\ghj, [\freq, no.midicps])})};