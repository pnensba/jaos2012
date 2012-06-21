// uses wslib (form quarks)
s.boot;
d = ();

d.dir = "/pndata/paquita/";
d.bufs = Buffer.readDir(d.dir,bufnumOffset:0, ext:"wav",nlevels:1); 
// 
d.bufs.do(_.play);
(
SynthDef("magneto", { arg n = 0, out=1, amp=1;
 Out.ar(out, amp*PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2));
}).load(s);
)

~multiplier = {arg x,y; x*y+10};
~multiplier = {|x,y| x*y+10};
~multiplier.(2,4)

~dur = {|n=0| d.bufs[n].numFrames/d.bufs[n].sampleRate};
~joue = {|n=0,o=0,a=1| Synth.new(\magneto, [\n,n,\out,o,\amp,a]); ~dur.(n) };

~joue.(3,0);~joue.(1,0);

d.volumes = [
1,0.1,1,1,1	,
1,1,0.2,1,1
];

~joue.(9,0);
~joue.(9,0,0.1);

(
~j = {
	var son, hp, dur;
	son = 11.rand;
	hp = 2.rand;
	dur = ~joue.(son,hp,d.volumes[son]);
	dur;
}
)

~j.()

2.rand

{10.do({var dur; dur = ~j.();dur.wait;})}.fork


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
