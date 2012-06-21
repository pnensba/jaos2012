// uses wslib (form quarks)
s.boot;
d = ();
d.dir = "/data/flavie/sons/";

d.bufs = Buffer.readDir(d.dir,bufnumOffset:0, ext:"wav",nlevels:1 ); 
// d.bufs.do(_.play);
(
SynthDef("play", { arg n = 0, out=1, amp=1;
 Out.ar(out, amp*PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2));
}).load(s);
)

~dur = {|n=0| d.bufs[n].numFrames/d.bufs[n].sampleRate};
~joue = {|n=0,o=0,a=1| Synth.new(\play, [\n,n,\out,o,\amp,a]); ~dur.(n) };
~joue.(1,1);~joue.(1,0)

~joue.(1,1,0.1);
~joue.(1,1,0.1);

~joue.(42,0,0.1);
// françois
~joue.(0,0,0.1);
~joue.(1,0,0.1);


s.makeBundle
ou

s.bind(for (0, size(d.bufs)-1, {|n| ~joue.(n,0)}))


routine
fork
choose
Demand
10.do({ [ 1, 2, 3 ].choose.postln });
10.do({ [ 1, 2, 3 ].wchoose([0.1, 0.2, 0.7]).postln });
f = { |n=8, min=0, max=7| (min..max).scramble.keep(n) };
f.value(8, 0, 7)
d.bufs.scramble
(0..8).scramble.keep(3)
[ 1, 2, 3, 4, 5, 6, 7, 8 ].curdle(0.5).postln;

Quarks.gui
