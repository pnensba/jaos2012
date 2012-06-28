// uses wslib (form quarks)
(
s = Server.local;
Server.default = s;
//s.options.device = "Digidesign HW ( 002 )";
s.options.device = "Fireface 400 (7DF)";
s.boot();
s.doWhenBooted({
 d = ();
 d.dir = "/pndata/pngit/jaos2012/flavie/";
 (d.dir++"flavie_reps06_simple.scd").loadPaths; // lis les sons
  (d.dir++"flavie_volumes01.scd").loadPaths; // les volumes
 (d.dir++"flavie_synths03_hps.scd").loadPaths; // joue les sons
})
);



