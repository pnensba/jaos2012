// uses wslib (form quarks)
(
s = Server.local;
Server.default = s;
//s.otions.device = "Digidesign HW ( 002 )";
s.options.device = "Fireface 400 (7DF)";
s.boot();
s.doWhenBooted({
 d = ();
 d.dir = "/data/pngit/jaos2012/flavie/";
 (d.dir++"flavie_reps05_simple.scd").loadPaths; // lis les sons
 (d.dir++"flavie_synths03_hps.scd").loadPaths; // joue les sons
})
)

/* Gotz
part1
*/
d.go.vols = ();
d.go.vols.a01 = 0.07;~joue.(d.go,'a01',[1,4]);
d.go.vols.a02 = 0.07;~joue.(d.go,'a02',2);
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


//françois

d.fr.vols = ();

d.fr.vols.a01 = 0.15;~joue.(d.fr,'a01');
d.fr.vols.b01 = 0.12;~joue.(d.fr,'b01');
d.fr.vols.c01 = 0.07;~joue.(d.fr,'c01');
d.fr.vols.d01 = 0.12;~joue.(d.fr,'d01');
d.fr.vols.e01 = 0.10;~joue.(d.fr,'e01');
d.fr.vols.e02 = 0.10;~joue.(d.fr,'e02');
d.fr.vols.f01 = 0.07;~joue.(d.fr,'f01'); //accent sur surface
d.fr.vols.g01 = 0.10;~joue.(d.fr,'g01');
d.fr.vols.g02 = 0.08;~joue.(d.fr,'g02');
d.fr.vols.h01 = 0.10;~joue.(d.fr,'h01');
d.fr.vols.h02 = 0.10;~joue.(d.fr,'h02');
d.fr.vols.h03 = 0.09;~joue.(d.fr,'h03');
d.fr.vols.h04 = 0.11;~joue.(d.fr,'h04');
d.fr.vols.i01 = 0.10;~joue.(d.fr,'i01');
d.fr.vols.j01 = 0.03;~joue.(d.fr,'j01');
d.fr.vols.j02 = 0.03;~joue.(d.fr,'j02');
//mauvais découpage!!
d.fr.vols.j03 = 0.03;~joue.(d.fr,'j03');
d.fr.vols.j04 = 0.03;~joue.(d.fr,'j04');
d.fr.vols.j05 = 0.03;~joue.(d.fr,'j05');
d.fr.vols.j06 = 0.03;~joue.(d.fr,'j06');
d.fr.vols.j07 = 0.03;~joue.(d.fr,'j07');
d.fr.vols.j08 = 0.03;~joue.(d.fr,'j08');
d.fr.vols.k01 = 0.09;~joue.(d.fr,'k01');
d.fr.vols.k02 = 0.09;~joue.(d.fr,'k02');
d.fr.vols.l01 = 0.07;~joue.(d.fr,'l01');
d.fr.vols.m01 = 0.10;~joue.(d.fr,'m01');  //piste multiplé pour écho
d.fr.vols.m01 = 0.06;~joue.(d.fr,'m01');
d.fr.vols.m01 = 0.01;~joue.(d.fr,'m01');


//Vincent


d.vt.vols = ();
d.vt.vols.a01 = 0.10;~joue.(d.vt,'a01');
d.vt.vols.b01 = 0.10;~joue.(d.vt,'b01');
d.vt.vols.b02 = 0.10;~joue.(d.vt,'b02');
d.vt.vols.b03 = 0.10;~joue.(d.vt,'b03');
d.vt.vols.b04 = 0.10;~joue.(d.vt,'b04');// decoupage!!
d.vt.vols.b05 = 0.10;~joue.(d.vt,'b05');
d.vt.vols.b06 = 0.10;~joue.(d.vt,'b06');
d.vt.vols.b07 = 0.10;~joue.(d.vt,'b07');
d.vt.vols.b08 = 0.10;~joue.(d.vt,'b08');
d.vt.vols.b09 = 0.10;~joue.(d.vt,'b09');
d.vt.vols.b10 = 0.10;~joue.(d.vt,'b10');
d.vt.vols.b11 = 0.10;~joue.(d.vt,'b11');
d.vt.vols.b12 = 0.10;~joue.(d.vt,'b12');
d.vt.vols.c01 = 0.10;~joue.(d.vt,'c01');
d.vt.vols.d01 = 0.10;~joue.(d.vt,'d01');
d.vt.vols.d02 = 0.10;~joue.(d.vt,'d02');
d.vt.vols.d03 = 0.10;~joue.(d.vt,'d03');
d.vt.vols.d04 = 0.10;~joue.(d.vt,'d04');
d.vt.vols.d05 = 0.10;~joue.(d.vt,'d05');
d.vt.vols.e01 = 0.06;~joue.(d.vt,'e01');
d.vt.vols.f01 = 0.10;~joue.(d.vt,'f01');  //découpage!
d.vt.vols.f02 = 0.06;~joue.(d.vt,'f02');
d.vt.vols.g01 = 0.02;~joue.(d.vt,'g01');
d.vt.vols.g02 = 0.06;~joue.(d.vt,'g02');
d.vt.vols.h01 = 0.10;~joue.(d.vt,'h01');
d.vt.vols.i01 = 0.10;~joue.(d.vt,'i01');
d.vt.vols.i02 = 0.05;~joue.(d.vt,'i02');
d.vt.vols.j01 = 0.10;~joue.(d.vt,'j01'); // découpage!!
d.vt.vols.j02 = 0.10;~joue.(d.vt,'j02');
d.vt.vols.j03 = 0.10;~joue.(d.vt,'j03');
d.vt.vols.j04 = 0.10;~joue.(d.vt,'j04');
d.vt.vols.j05 = 0.15;~joue.(d.vt,'j05');
d.vt.vols.k01 = 0.03;~joue.(d.vt,'k01');
d.vt.vols.l01 = 0.10;~joue.(d.vt,'l01');
d.vt.vols.m01 = 0.10;~joue.(d.vt,'m01');
d.vt.vols.n01 = 0.10;~joue.(d.vt,'n01');
d.vt.vols.n02 = 0.10;~joue.(d.vt,'n02');
d.vt.vols.n03 = 0.10;~joue.(d.vt,'n03');
d.vt.vols.o01 = 0.10;~joue.(d.vt,'o01');
d.vt.vols.p01 = 0.10;~joue.(d.vt,'p01');
d.vt.vols.p02 = 0.10;~joue.(d.vt,'p02');
d.vt.vols.q01 = 0.10;~joue.(d.vt,'q01');
d.vt.vols.r01 = 0.10;~joue.(d.vt,'r01');
d.vt.vols.s01 = 0.10;~joue.(d.vt,'s01');
d.vt.vols.s02 = 0.10;~joue.(d.vt,'s02');
d.vt.vols.s03 = 0.10;~joue.(d.vt,'s03');
d.vt.vols.s04 = 0.10;~joue.(d.vt,'s04');
d.vt.vols.t01 = 0.10;~joue.(d.vt,'t01');
d.vt.vols.u01 = 0.10;~joue.(d.vt,'u01');
d.vt.vols.u02 = 0.10;~joue.(d.vt,'u02');
d.vt.vols.u03 = 0.10;~joue.(d.vt,'u03');
d.vt.vols.u04 = 0.10;~joue.(d.vt,'u04');
d.vt.vols.u05 = 0.10;~joue.(d.vt,'u05');
d.vt.vols.u06 = 0.10;~joue.(d.vt,'u06');
d.vt.vols.v01 = 0.10;~joue.(d.vt,'v01');


//Rose A et B


d.ra.vols = ();
d.rb.vols = ();

d.ra.vols.a01 = 0.07;~joue.(d.ra,'a01');d.rb.vols.a01 = 0.07;~joue.(d.rb,'a01');
d.ra.vols.a02 = 0.08;~joue.(d.ra,'a02');d.rb.vols.a02 = 0.08;~joue.(d.rb,'a02');
d.ra.vols.a03 = 0.10;~joue.(d.ra,'a03');d.rb.vols.a03 = 0.10;~joue.(d.rb,'a03');
d.ra.vols.a04 = 0.11;~joue.(d.ra,'a04');d.rb.vols.a04 = 0.11;~joue.(d.rb,'a04');
d.ra.vols.b01 = 0.10;~joue.(d.ra,'b01');d.rb.vols.b01 = 0.10;~joue.(d.rb,'b01');
d.ra.vols.c01 = 0.10;~joue.(d.ra,'c01');d.rb.vols.c01 = 0.10;~joue.(d.rb,'c01');
d.ra.vols.c02 = 0.10;~joue.(d.ra,'c02');d.rb.vols.c02 = 0.10;~joue.(d.rb,'c02');
d.ra.vols.c03 = 0.10;~joue.(d.ra,'c03');d.rb.vols.c03 = 0.10;~joue.(d.rb,'c03');
d.ra.vols.c04 = 0.10;~joue.(d.ra,'c04');d.rb.vols.c04 = 0.10;~joue.(d.rb,'c04');


//Rose B

d.rb.vols.a01 = 0.03;~joue.(d.rb,'a01');
d.rb.vols.a02 = 0.03;~joue.(d.rb,'a02');
d.rb.vols.a03 = 0.03;~joue.(d.rb,'a03');
d.rb.vols.a04 = 0.03;~joue.(d.rb,'a04');
d.rb.vols.b01 = 0.03;~joue.(d.rb,'b01');
d.rb.vols.b01 = 0.03;~joue.(d.rb,'b01');
d.rb.vols.c01 = 0.03;~joue.(d.rb,'c01');
d.rb.vols.c02 = 0.03;~joue.(d.rb,'c02');
d.rb.vols.c03 = 0.03;~joue.(d.rb,'c03');
d.rb.vols.c04 = 0.03;~joue.(d.rb,'c04');

//Jim

d.ji.vols = ();
d.ji.vols.b01 = 0.03;~joue.(d.ji,'b01');




//Nathalia A

d.na.vols = ();
d.na.vols.a01 = 0.03;~joue.(d.na,'a01');

//nathalia B

d.nb.vols = ();
d.nb.vols.a01 = 0.03;~joue.(d.nb,'a01');

