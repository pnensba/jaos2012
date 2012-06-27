(
(d.dir++"compo_gotz03.scd").loadPaths; // compos
(d.dir++"compo_francois04.scd").loadPaths; // francois
)


// francois
(
{10.do({|i|
	var partie, extraits, num_extrait; 
	partie = d.fr_parties.choose();
	extraits = d.fr[partie.asSymbol];
	num_extrait = extraits.size.rand;
    extraits[num_extrait..].do({|extrait|
		var hps, dur;
		(partie++extrait).postln;
		hps = d.fr_hps.wchoose(d.fr_hps_proba);
		dur = ~joue.(d.fr, (partie++extrait).asSymbol, hps);
		dur.wait;
	 });
	 (5.rand+5).wait;
 })
}.fork;
)


// gotz

(
{
2.do(
{
 var partie='a';
 d.compo_go.do({|extrait| 
 var dur;
 if (extrait[13].asSymbol!=partie.asSymbol) {((4*60).rand+8*60).wait;}; // on attend entre 8 et 12 minutes ˆ chaque changement d'extrait
 partie = extrait[13];
 dur = extrait.compile.();
 dur.postln;
 dur.wait;
 });
 10.wait;
}
)
}.fork;
)
