

//Götz (toujours assez faibles, de l'ordre du bruissement)
  // volume règlé

d.go.vols = ();
d.go.vols.a01 = 1;
d.go.vols.a02 = 1;
d.go.vols.a03 = 1;
d.go.vols.a04 = 1;
d.go.vols.a05 = 1;
d.go.vols.a06 = 1;
d.go.vols.b01 = 0.3; // passage dans le bassin?
d.go.vols.b02 = 0.7;
d.go.vols.c01 = 1.3;
d.go.vols.c02 = 1.3;
d.go.vols.c03 = 1.3;
d.go.vols.c04 = 1.3;
d.go.vols.c05 = 1.5;
d.go.vols.d01 = 0.7;
d.go.vols.d02 = 0.7;
d.go.vols.d03 = 0.7;
d.go.vols.d04 = 0.7;
d.go.vols.d05 = 0.7;
d.go.vols.d06 = 0.7;
d.go.vols.d07 = 0.7;
d.go.vols.d08 = 0.7;
d.go.vols.d09 = 0.7;
d.go.vols.d10 = 0.7;
d.go.vols.d11 = 0.7;
d.go.vols.d12 = 0.7;
d.go.vols.d13 = 0.7;
d.go.vols.d14 = 0.7;
d.go.vols.e01 = 0.6;
d.go.vols.e02 = 1.4;
d.go.vols.e03 = 1.4;
d.go.vols.e04 = 1.4;
d.go.vols.e05 = 1.4;
d.go.vols.e06 = 1.4;
d.go.vols.e07 = 1.4;
d.go.vols.e08 = 1.4;
d.go.vols.e09 = 1.4;
d.go.vols.e10 = 1.4;
d.go.vols.e11 = 1.4;
d.go.vols.e12 = 1.7;
d.go.vols.f01 = 0.4;
d.go.vols.g01 = 1;
d.go.vols.g02 = 1;
d.go.vols.g03 = 1;
d.go.vols.g04 = 1;
d.go.vols.g05 = 1.2;
d.go.vols.g06 = 1.5;
d.go.vols.g07 = 1.5;
d.go.vols.g08 = 1.5;
d.go.vols.g09 = 1.5;
d.go.vols.g10 = 1.5;
d.go.vols.g11 = 1.5;

d.compo_go = [
"~joue.(d.go,'a01',[2,3])",  
"~joue.(d.go,'a02',[2,3,4])",
"~joue.(d.go,'a03',2)",
"~joue.(d.go,'a04',[2,3,4])",
"~joue.(d.go,'a05',[2,3])",
"~joue.(d.go,'a06',2)",
"~joue.(d.go,'b01',[1,2,3,4])",
"~joue.(d.go,'b02',3)",
"~joue.(d.go,'c01',[2,4])",
"~joue.(d.go,'c02',[4,1])",
"~joue.(d.go,'c03',[1,3])",
"~joue.(d.go,'c04',[2,3])",
"~joue.(d.go,'c05',[1,2,3,4])",
"~joue.(d.go,'d01',[1,2,3,4])",
"~joue.(d.go,'d02',[1,2,3])",
"~joue.(d.go,'d03',[1,2,3,4])",
"~joue.(d.go,'d04',[2,3,4])",
"~joue.(d.go,'d05',[1,2,3])",
"~joue.(d.go,'d06',[2,3,4])",
"~joue.(d.go,'d07',[1,2,3])",
"~joue.(d.go,'d08',[2,3,4])",
"~joue.(d.go,'d09',[1,2,3])",
"~joue.(d.go,'d10',[2,3,4])",
"~joue.(d.go,'d11',[1,2,3])",
"~joue.(d.go,'d12',[2,3,4])",
"~joue.(d.go,'d13',[1,2,3])",
"~joue.(d.go,'d14',[2,3,4])",
"~joue.(d.go,'e01',[1,2,3,4])",
"~joue.(d.go,'e02',[3,4])",
"~joue.(d.go,'e03',[1,2])",
"~joue.(d.go,'e04',2)",
"~joue.(d.go,'e05',1)",
"~joue.(d.go,'e06',[3,4])",
"~joue.(d.go,'e07',3)",
"~joue.(d.go,'e08',4)",
"~joue.(d.go,'e09',3)",
"~joue.(d.go,'e10',4)",
"~joue.(d.go,'e11',[3,4])",
"~joue.(d.go,'e12',[1,2,3,4])",
"~joue.(d.go,'f01',[1,2,3,4])",
"~joue.(d.go,'g01',[1,2,3,4])",
"~joue.(d.go,'g02',2)",
"~joue.(d.go,'g03',[2,3])",
"~joue.(d.go,'g04',[1,2,3,4])",
"~joue.(d.go,'g05',1)",
"~joue.(d.go,'g06',[1,2,3,4])",
"~joue.(d.go,'g07',1)",
"~joue.(d.go,'g08',[1,2,3,4])",
"~joue.(d.go,'g09',1)",
"~joue.(d.go,'g10',[1,2,3,4])",
"~joue.(d.go,'g11',[1,2,3,4])"
]

{d.compo_go.do({|extrait| var dur; dur = extrait.compile.();dur.postln;dur.wait;})}.fork;
