// uses wslib (form quarks)
s.boot;
d = ();
d.dir = "/data/pndata/paquita/";
d.dir = "/data/videos/hp2012/chou";
d.bufs = Buffer.readDir(d.dir,bufnumOffset:0, ext:"wav",nlevels:1 ); 
// d.bufs.do(_.play);
(
SynthDef("play", { arg n = 0, out=1;
 Out.ar(out, PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2));
}).load(s);
)

~joue = {|n=0,o=0| Synth.new(\play, [\n,n,\out,o]) };
~joue.(1,1)

(
d.sons = ();
d.joue = ();
for (0, 7, { arg n; 
  d.sons[n] = ();
  d.sons[n].tape = ();
  d.sons[n].tape = NodeProxy(s, \audio, 2);
  d.sons[n].tape.play;
  d.sons[n].tape.source = {|t=0| PlayBuf.ar(2,n, BufRateScale.kr(n), trigger:t, loop:0)};
  d.sons[0].trig = NodeProxy.control(s, 1);
  d.sons[0].tape.map(\t ,d.sons[n].trig);
  d.joue[n] = {d.sons[n].trig.source={Line.kr(0.1,0,0.1)}};
})
)

(
for (0, 7, { arg n; 
	d.joue[n] = {|a=9| a.postln; d.sons[n].trig.source={Line.kr(0.1,0,0.1)}};
})
)
d.joue[1].(11)

d.sons[2].trig.source={Line.kr(0.1,0,0.1)}

f = ()

f.e = {|a| a.postln}
f.e.value(2)
f.e
function
t = NodeProxy.control(s, 1);
d.bsyns[1].map(\t, t);
t.source={Line.kr(0.1,0,0.1)};
t.play

d.bsyns[0].play;


d.bufs[0].play.playN([0])

Quarks.gui