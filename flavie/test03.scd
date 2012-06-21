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
/* Gotz
part1
*/
~joue.(28,2,0.07);
~joue.(29,3,0.07);
~joue.(30,2,0.07);
~joue.(31,3,2);
~joue.(32,3,0.7);
~joue.(33,3,0.03);
//part2
~joue.(34,3,0.03); // passage de l'un à l'autre
~joue.(35,3,1);
//part3
~joue.(36,3,0.07);
~joue.(37,3,0.07);
~joue.(38,3,0.07);
~joue.(39,3,0.07);
~joue.(40,3,0.07);
//part4
~joue.(41,3,0.03);
~joue.(42,3,0.03);
~joue.(43,3,0.03);
~joue.(44,3,0.03);
~joue.(45,3,0.03);
~joue.(46,3,0.03);
~joue.(47,3,0.03);
~joue.(48,3,0.03);
~joue.(49,3,0.03);
~joue.(50,3,0.03);
~joue.(51,3,0.03);
~joue.(52,3,0.03);
~joue.(53,3,0.03);
~joue.(54,3,0.03);
//part5
~joue.(55,3,0.07);
~joue.(56,3,0.07);
~joue.(57,3,0.07);
~joue.(58,3,0.07);
~joue.(59,3,0.07);
~joue.(60,3,0.07);
~joue.(61,3,0.07);
~joue.(62,3,0.07);
~joue.(63,3,0.07);
~joue.(64,3,0.07);
~joue.(65,3,0.07);
~joue.(66,3,1);
//part6
~joue.(67,3,0.02);
//part7
~joue.(68,3,0.07);
~joue.(69,3,0.07);
~joue.(70,3,0.07);
~joue.(71,3,0.07);
~joue.(72,3,0.08);
~joue.(73,3,0.08);
~joue.(74,3,0.09);
~joue.(75,3,0.10);
~joue.(76,3,0.07);
~joue.(29,3,0.07);
~joue.(29,3,0.07);


// françois
~joue.(28,1,0.01);

~joue.(1,0,0.08);
~joue.(110,0,0.08);



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
