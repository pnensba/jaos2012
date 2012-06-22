s.boot;
m = ();
MIDIIn.connectAll;

MIDIFunc.noteOn({|vel note| d.keyb[note].set(\amp,vel/300)});
MIDIFunc.noteOff({|vel note| d.keyb[note].set(\amp,0)});


SynthDef.new("ghj", {Out.ar(0, \amp.kr(1,0.01)*SinOsc.ar(\freq.kr(200,0.01)));}).load(s);
d = ();
d.keyb = 0.dup(200);
~keyb = {for (48,110, {|no| d.keyb[no].free;d.keyb[no] = Synth(\ghj, [\freq, no.midicps, \amp, 0])})};
~keyb.();
db