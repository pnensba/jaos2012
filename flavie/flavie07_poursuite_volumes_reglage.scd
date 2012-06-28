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
 (d.dir++"flavie_reps05_simple.scd").loadPaths; // lis les sons
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

// Jim

d.ji.vols = (); 
d.ji.vols.a01 = 1 ;~joue.(d.ji,'a01',[1,4]);
d.ji.vols.b01 = 1 ;~joue.(d.ji,'b01',[1,4]);
d.ji.vols.b02 = 0.8 ;~joue.(d.ji,'b02',[1,4]); 
d.ji.vols.b03 = 0.7 ;~joue.(d.ji,'b03',[1,4]); 
d.ji.vols.c01 = 2 ;~joue.(d.ji,'c01',[1,4]); 
d.ji.vols.c02 = 0.7 ;~joue.(d.ji,'c02',[1,4]);  // voire découpage aphorism epigramme essays
d.ji.vols.d01 = 1 ;~joue.(d.ji,'d01',[1,4]); 
d.ji.vols.e01 = 0.5 ;~joue.(d.ji,'e01',[1,4]); 

// nathalia a


d.na.vols = (); 
d.na.vols.a01 = 0 ;~joue.(d.na,'a01',[1,4]);
d.na.vols.a02 = 1 ;~joue.(d.na,'a02',[1,4]);
d.na.vols.a03 = 1 ;~joue.(d.na,'a03',[1,4]);
d.na.vols.a04 = 1 ;~joue.(d.na,'a04',[1,4]);
d.na.vols.a05 = 1 ;~joue.(d.na,'a05',[1,4]);

// nathalia b

d.nb.vols = (); 
d.nb.vols.a01 = 1 ;~joue.(d.nb,'a01',[1,4]);
d.nb.vols.a02 = 1 ;~joue.(d.nb,'a02',[1,4]);
d.nb.vols.a03 = 1 ;~joue.(d.nb,'a03',[1,4]);
d.nb.vols.a04 = 1 ;~joue.(d.nb,'a04',[1,4]);
d.nb.vols.a05 = 1 ;~joue.(d.nb,'a05',[1,4]);


// nathalia c

d.nc.vols = ();
d.nc.vols.a01 = 0,05 ;~joue.(d.nc,'a01',[1,4]);
d.nc.vols.b01 = 1 ;~joue.(d.nc,'b01',[1,4]);
d.nc.vols.c01 = 1 ;~joue.(d.nc,'c01',[1,4]);
d.nc.vols.c02 = 1 ;~joue.(d.nc,'c02',[1,4]);