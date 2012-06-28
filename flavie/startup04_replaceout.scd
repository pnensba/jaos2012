// uses wslib (form quarks)
(
s = Server.local;
Server.default = s;
//s.options.device = "Digidesign HW ( 002 )";
//s.options.device = "Fireface 400 (7DF)";
//s.options.device = "JackRouter";
s.boot();
s.doWhenBooted({
 d = ();
 d.dir = "/pndata/pngit/jaos2012/flavie/";
 (d.dir++"flavie_reps06_simple.scd").loadPaths; // lis les sons
  (d.dir++"flavie_volumes01.scd").loadPaths; // les volumes
  (d.dir++"compo_classique.scd").loadPaths; // classique
  (d.dir++"compo_gotz03.scd").loadPaths; // gotz
  (d.dir++"compo_francois04.scd").loadPaths; // francois
  (d.dir++"compo_jim01.scd").loadPaths; // jim
  (d.dir++"compo_nathaliaAB01.scd").loadPaths; // nathalia
  (d.dir++"compo_tamim01.rtf").loadPaths; // tamim
  (d.dir++"compo_pampos01.scd").loadPaths; // pampos

  d.fa.vols = ();
  d.fa.vols.a01 = 0.5;
  (d.dir++"flavie_synths05_replaceout.scd").loadPaths; // joue les sons
 
})
);

/*

~joue.(d.go,'a01',8,0.1)

~joue.(d.rb,'a01',1,10)
*/


