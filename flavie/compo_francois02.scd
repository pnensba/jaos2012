
//françois
//volume pas encore réglé


d.fr.vols = ();

d.fr.vols.a01 = 0.15;
d.fr.vols.b01 = 0.12;
d.fr.vols.c01 = 0.07;
d.fr.vols.d01 = 0.12;
d.fr.vols.e01 = 0.10;
d.fr.vols.e02 = 0.10;
d.fr.vols.f01 = 0.07; //accent sur surface
d.fr.vols.g01 = 0.10;
d.fr.vols.g02 = 0.08;
d.fr.vols.h01 = 0.10;
d.fr.vols.h02 = 0.10;
d.fr.vols.h03 = 0.09;
d.fr.vols.h04 = 0.11;
d.fr.vols.i01 = 0.10;
d.fr.vols.j01 = 0.03;
d.fr.vols.j02 = 0.03;
//mauvais découpage!!
d.fr.vols.j03 = 0.03;
d.fr.vols.j04 = 0.03;
d.fr.vols.j05 = 0.03;
d.fr.vols.j06 = 0.03;
d.fr.vols.j07 = 0.03;
d.fr.vols.j08 = 0.03;
d.fr.vols.k01 = 0.09;
d.fr.vols.k02 = 0.09;
d.fr.vols.l01 = 0.07;
d.fr.vols.m01 = 0.10;  //piste multiplé pour écho
d.fr.vols.m01 = 0.06;
d.fr.vols.m01 = 0.01;




d.fr_parties = ['a','b','c','d','e','f','g','h','i','j','k','l','m'];
d.fr_hps = [[6,9,10],[7,8],5];
d.fr_hps_proba = [4/7,2/7,1/7];
d.fr_hp = d.fr_hps.wchoose(d.fr_hps_proba);

(
{10.do({|i|
	var partie, extraits; 
	partie = d.fr_parties.choose();
	//partie.asSymbol.postln;
	extraits =	d.fr[partie.asSymbol];
   extraits.do({|extrait|
		var hps, dur;
		//(partie++extrait).postln;
		hps = d.fr_hps.wchoose(d.fr_hps_proba);
		dur = ~joue.(d.fr, (partie++extrait).asSymbol, hps);
		dur.wait;
	 });
	 (5.rand+5).wait;
 })
}.fork;
)




