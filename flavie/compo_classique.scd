~dehpsrand = {|hpsrand|[hpsrand.lace[0..hpsrand.size-1], hpsrand.lace[hpsrand.size..]]};

(
~compo_fr = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str, nbhps, hps_choisis, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 
	 nbhps = [1,2,3].wchoose([4,2,1]/7);
	 hps_choisis = Array.new(3);
	 hpsrand = [[6,2/7],[7,2/7],[8,2/7],[5,1/7]];
	 
	 nbhps.do({
		 var hps,hpsw, hp_choisi; 
		 hps=~dehpsrand.(hpsrand)[0]; 
		 hpsw=~dehpsrand.(hpsrand)[1];
		 hp_choisi = hps.wchoose(hpsw);
		 hps_choisis.add(hp_choisi);
		 hpsrand.removeAt(hps.indexOf(hp_choisi));
	 });
	 hps_choisis.postln;
	 dur = ~joue.(texte,joue_str.asSymbol,hps_choisis,0.5);
	 dur.postln;
	 dur.wait;
	 (5.rand+5).wait;
 });
}
);

(
~compo_rb = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str,hp_choisi, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 hp_choisi = [6,7,8].choose;
	 dur = ~joue.(texte,joue_str.asSymbol,hp_choisi);
	 dur.wait;
	 ((2*60).rand+3*50).wait;
 });
}
);

(
~compo_rarb = {
 var texte, partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 texte = d.ra;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str, nbhps, hps_choisis, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 
	 nbhps = [1,2,3,4].wchoose([2,2,1,1]/6);
	 hps_choisis = Array.new(3);
	 hpsrand = [[6,1/5],[7,2/5],[8,2/5]];
	 
	 nbhps.do({
		 var hps,hpsw, hp_choisi; 
		 hps=~dehpsrand.(hpsrand)[0]; 
		 hpsw=~dehpsrand.(hpsrand)[1];
		 hp_choisi = hps.wchoose(hpsw);
		 hps_choisis.add(hp_choisi);
		 hpsrand.removeAt(hps.indexOf(hp_choisi));
	 });
	 hps_choisis.postln;
	 dur = ~joue.(texte,joue_str.asSymbol,hps_choisis);
	 ~joue.(d.ra,joue_str.asSymbol,hps_choisis);
	 dur.postln;
	 dur.wait;
	 (5.rand+5).wait;
 });
}
);

(
~compo_vt = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str,hp_choisi, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 hp_choisi = [5,6,7,8].wchoose([1,2,3,3]/9);
	 dur = ~joue.(texte,joue_str.asSymbol,hp_choisi);
	 dur.wait;
	 ((2*60).rand+3*50).wait;
 });
}
);

(
~compo_ji = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str,hp_choisi;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 hp_choisi = [5,6,7,8].wchoose([1,2,3,3]/9);
	 dur = ~joue.(texte,joue_str.asSymbol,hp_choisi);
	 dur.wait;
	 (3.rand+10).wait;
 });
}
);


(
~compo_nanb = {
 var texte, partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 texte = d.na;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_str.postln;
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str, nbhps, hps_choisis, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;

	 nbhps = [1,2,3,4].wchoose([2,2,1,1]/6);
	 hps_choisis = Array.new(3);
	 hpsrand = [[5,1/7],[6,2/7],[7,2/7],[8,2/7]];
	 nbhps.do({
		 var hps,hpsw, hp_choisi; 
		 hps=~dehpsrand.(hpsrand)[0]; 
		 hpsw=~dehpsrand.(hpsrand)[1];
		 hp_choisi = hps.wchoose(hpsw);
		 hps_choisis.add(hp_choisi);
		 hpsrand.removeAt(hps.indexOf(hp_choisi));
	 });
	 hps_choisis.postln;
	 dur = ~joue.(d.na,joue_str.asSymbol,hps_choisis,0.5);
	 ~joue.(d.nb,joue_str.asSymbol,hps_choisis,0.5);
	 dur.postln;
	 dur.wait;
	 (5.rand+5).wait;
 });
}
);


(
~fab = {
	var hp, dur;
	 hp = [1,2,3,4,5,6,7,8].wchoose([1,1,1,1,4,4,4,4]/16);
	 hp.postln;
	 dur = ~joue.(d.fa,'a01',hp,0.6);
	 dur.wait;
	 ((7*60).rand+3*60).wait;
 });

(
~compo_ta = {|texte|
 var partie_str, partie_tab, parties, nbextraits, noextrait0, nbextraits_joues, noextraits;
 parties = ~getparties.(texte);
 partie_str = parties.choose();
 partie_tab = texte[partie_str.asSymbol];
 nbextraits = partie_tab.size;
 nbextraits.postln;
 noextrait0 = nbextraits.rand;
 nbextraits_joues = (nbextraits-noextrait0).rand+1;
 noextraits = (noextrait0..(noextrait0+nbextraits_joues-1));
 partie_tab[noextraits].do({|extrait_str| 
	 var dur,joue_str, nbhps, hps_choisis, hpsrand;
	 joue_str = partie_str.asSymbol++extrait_str.asSymbol;
	 
	 nbhps = [1,2,4].wchoose([4,4,1]/9);
	 hps_choisis = Array.new(3);
	 hpsrand = [[6,2/7],[7,2/7],[8,2/7],[5,1/7]];
	 
	 nbhps.do({
		 var hps,hpsw, hp_choisi; 
		 hps=~dehpsrand.(hpsrand)[0]; 
		 hpsw=~dehpsrand.(hpsrand)[1];
		 hp_choisi = hps.wchoose(hpsw);
		 hps_choisis.add(hp_choisi);
		 hpsrand.removeAt(hps.indexOf(hp_choisi));
	 });
	 hps_choisis.postln;
	 dur = ~joue.(texte,joue_str.asSymbol,hps_choisis,0.5);
	 dur.postln;
	 dur.wait;
	 ((4*60).rand+2*60).wait;
 });
}
);

(
~compo_pa = {
 var nbparties, npartie0, parties;
 nbparties = [1,2,3].wchoose([4,1,2]/7);
 parties = ~getparties.(d.pa);
 npartie0= 9.rand; 
 parties.do({
	var partie;
	partie = parties[npartie0];
	['01','02','03'].do({|extrait|
		var dur, joue_str;
		joue_str = partie.asSymbol++extrait.asSymbol;
		dur = ~joue.(d.pa,joue_str.asSymbol,[1,2,5,6,7,8].wchoose([1,1,2,2,2,2]/10),0.5);
		dur.wait;
	});
   npartie0 = npartie0+1;
 });
 ((5*60).rand+4*60).wait;
}
);

