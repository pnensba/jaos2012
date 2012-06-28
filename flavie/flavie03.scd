// uses wslib (form quarks)
o = Server.local.options;
o.device = "Digidesign HW ( 002 )";
s = Server('\local',options:o)
s.boot();
d = ();
d.dir = "/data/pngit/jaos2012/flavie/";
(d.dir++"flavie_reps01.scd").loadPaths;
(d.dir++"flavie_synths01.scd").loadPaths;

~joue.(3,0);
~joue.(1,0);

/* Gotz
part1
*/

d.go.vols = ();
d.go.vols.a01 = 0.07;~joue.(d.go,'a01');
d.go.vols.a02 = 0.07;~joue.(d.go,'a02');
d.go.vols.a03 = 0.07;~joue.(d.go,'a03');
d.go.vols.a04 = 2;~joue.(d.go,'a04');
d.go.vols.a05 = 0.7;~joue.(d.go,'a05');
d.go.vols.a06 = 0.3;~joue.(d.go,'a06');
d.go.vols.b01 = 0.3;~joue.(d.go,'b01');
d.go.vols.b02 = 1;~joue.(d.go,'b02');
d.go.vols.c01 = 0.07;~joue.(d.go,'c01');
d.go.vols.c02 = 0.07;~joue.(d.go,'c02');
d.go.vols.c03 = 0.07;~joue.(d.go,'c03');
d.go.vols.c04 = 0.07;~joue.(d.go,'c04');
d.go.vols.c05 = 0.07;~joue.(d.go,'c05');
d.go.vols.d01 = 0.03;~joue.(d.go,'d01');
d.go.vols.d02 = 0.03;~joue.(d.go,'d02');
d.go.vols.d03 = 0.03;~joue.(d.go,'d03');
d.go.vols.d04 = 0.03;~joue.(d.go,'d04');
d.go.vols.d05 = 0.03;~joue.(d.go,'d05');
d.go.vols.d06 = 0.03;~joue.(d.go,'d06');
d.go.vols.d07 = 0.03;~joue.(d.go,'d07');
d.go.vols.d08 = 0.03;~joue.(d.go,'d08');
d.go.vols.d09 = 0.03;~joue.(d.go,'d09');
d.go.vols.d10 = 0.03;~joue.(d.go,'d10');
d.go.vols.d11 = 0.03;~joue.(d.go,'d11');
d.go.vols.d12 = 0.03;~joue.(d.go,'d12');
d.go.vols.d13 = 0.03;~joue.(d.go,'d13');
d.go.vols.d14 = 0.03;~joue.(d.go,'d14');
d.go.vols.e01 = 0.07;~joue.(d.go,'e01');
d.go.vols.e02 = 0.07;~joue.(d.go,'e02');
d.go.vols.e03 = 0.07;~joue.(d.go,'e03');
d.go.vols.e04 = 0.07;~joue.(d.go,'e04');
d.go.vols.e05 = 0.07;~joue.(d.go,'e05');
d.go.vols.e06 = 0.07;~joue.(d.go,'e06');
d.go.vols.e07 = 0.07;~joue.(d.go,'e07');
d.go.vols.e08 = 0.07;~joue.(d.go,'e08');
d.go.vols.e09 = 0.07;~joue.(d.go,'e09');
d.go.vols.e10 = 0.07;~joue.(d.go,'e10');
d.go.vols.e11 = 0.07;~joue.(d.go,'e11');
d.go.vols.e12 = 1;~joue.(d.go,'e12');
d.go.vols.f01 = 0.03;~joue.(d.go,'f01');
d.go.vols.g01 = 0.07;~joue.(d.go,'g01');
d.go.vols.g02 = 0.07;~joue.(d.go,'g02');
d.go.vols.g03 = 0.07;~joue.(d.go,'g03');
d.go.vols.g04 = 0.07;~joue.(d.go,'g04');
d.go.vols.g05 = 0.08;~joue.(d.go,'g05');
d.go.vols.g06 = 0.08;~joue.(d.go,'g06');
d.go.vols.g07 = 0.09;~joue.(d.go,'g07');
d.go.vols.g08 = 0.10;~joue.(d.go,'g08');











