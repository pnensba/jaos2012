// uses wslib (form quarks)
(
s = Server.local;
Server.default = s;
//o.device = "Digidesign HW ( 002 )";
s.options.device = "JackRouter";
s.boot;
s.doWhenBooted({
 d = ();
 d.dir = "/pndata/pngit/jaos2012/paquita/";
 (d.dir++"paquita_reps01.scd").loadPaths;
 (d.dir++"paquita_synths01_fonctions.scd").loadPaths;
 d.vols = ();
 (
  	d.vols.r1 = 0.1;
	d.vols.r2 = 0.1;
	d.vols.ring = 0.1;
	d.vols.t3 = 0.1;
	d.vols.t4 = 0.1;
	d.vols.v1 = 1;
	d.vols.v2 = 1;
	d.vols.v3 = 1;
	d.vols.v4 = 1;
	d.vols.v5 = 1;
	d.vols.v6 = 1;
)
})
)

~joue.('r2',[1,3,4]);~joue.('v1',[2,5])

(
~j = {
 var son, hp, dur;
 son = 11.rand;
 hp = 6.rand;
 dur = ~joue.(d.sn[son],hp);
 dur;
});

{10.do({var dur; dur = ~j.();dur.wait;})}.fork
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
