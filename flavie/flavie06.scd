// uses wslib (form quarks)
(
s = Server.local;
Server.default = s;
//s.otions.device = "Digidesign HW ( 002 )";
s.options.device = "Fireface 400 (7DF)";
s.boot();
s.doWhenBooted({
 d = ();
 d.dir = "/pndata/pngit/jaos2012/flavie/";
 (d.dir++"flavie_reps04_simple.scd").loadPaths; // lis les sons
  (d.dir++"flavie_volumes01.scd").loadPaths; // les volumes
 (d.dir++"flavie_synths03_hps.scd").loadPaths; // joue les sons
})
);

/*
texte = locuteur
parties A,B ...
extraits 01, 02, ...
*/

/*
on tire une partie, une lettre A,B ou C
*/

(
~joue_rose = {
	var partie, extraits;
	partie = ['a','b','c'].choose; // tire une partie
	extraits = d.ra[partie];
	{extraits.do({|extrait| ~joue.(d.ra,(partie++extrait).asSymbol,4.rand+1).wait})}.fork;
}
)

~joue_rose.()
