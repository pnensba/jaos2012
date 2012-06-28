d.texte = d.go;
~dehpsrand = {|hpsrand|[hpsrand.lace[0..hpsrand.size-1], hpsrand.lace[hpsrand.size..]]};

(
~compo = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 //partie.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 //nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str, nbhps, hps_choisis, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 
	 nbhps = [1,2,3].wchoose([4/7, 2/7, 1/7]);
	 hps_choisis = Array.new(3);
	 hpsrand = [[6,4/7/3],[9,4/7/3],[10,4/7/3],[7,2/7/2],[8,2/7/2],[5,1/7]];
	 
	 nbhps.do({
		 var hps,hpsw, hp_choisi; 
		 hps=~dehpsrand.(hpsrand)[0]; 
		 hpsw=~dehpsrand.(hpsrand)[1];
		 hp_choisi = hps.wchoose(hpsw);
		 hps_choisis.add(hp_choisi);
		 hpsrand.removeAt(hps.indexOf(hp_choisi));
	 });
	 //hps_choisis.postln;
	 dur = ~joue.(texte,joue_str.asSymbol,hps_choisis);
	 dur.postln;
	 dur.wait;
 });
}
)
{~compo.(d.go)}.fork

10.do({~compo.(d.go).postln})
(1..10)
d.go.f

d.go.a