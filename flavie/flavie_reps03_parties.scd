d.dirsons = "/pndata/flavie/sons/";
~getkeys = {|dict| 
	var arr;
	arr = Array.new(100);
	dict.collect({|val,key|arr.add(key)});
	arr.sort();
};

// Gotz
d.bufsgo = Buffer.readDir(d.dirsons++"go",ext:"wav",nlevels:0); 
(
d.go = ();
d.bufsgo.do({|b| 
	var name, partie, num;
	name = PathName(b.path).fileNameWithoutExtension;
	partie = name[0];
	num = name[1..];
	if (~getkeys.(d.go).indexOf(partie.asSymbol)==nil, {d.go[partie.asSymbol] = Array.new(100)});
	d.go[partie.asSymbol].add(b);
	d.go[name.asSymbol] = b;
})
);

// François
d.bufsfr = Buffer.readDir(d.dirsons++"fr",ext:"wav",nlevels:0); 
(
d.fr = ();
d.bufsfr.do({|b| 
	var name;
	name = PathName(b.path).fileNameWithoutExtension;
	d.fr[name.asSymbol] = b;
})
);

// Vincent
d.bufsvt = Buffer.readDir(d.dirsons++"vt",ext:"wav",nlevels:0); 
(
d.vt = ();
d.bufsvt.do({|b| 
	var name;
	name = PathName(b.path).fileNameWithoutExtension;
	d.vt[name.asSymbol] = b;
})
);

// Rose A
d.bufsra = Buffer.readDir(d.dirsons++"ra",ext:"wav",nlevels:0); 
(
d.ra = ();
d.bufsra.do({|b| 
	var name;
	name = PathName(b.path).fileNameWithoutExtension;
	d.ra[name.asSymbol] = b;
})
);

// Rose B
d.bufsrb = Buffer.readDir(d.dirsons++"rb",ext:"wav",nlevels:0); 
(
d.rb = ();
d.bufsrb.do({|b| 
	var name;
	name = PathName(b.path).fileNameWithoutExtension;
	d.rb[name.asSymbol] = b;
})
);

// Jim
d.bufsji = Buffer.readDir(d.dirsons++"ji",ext:"wav",nlevels:0); 
(
d.ji = ();
d.bufsji.do({|b| 
	var name;
	name = PathName(b.path).fileNameWithoutExtension;
	d.ji[name.asSymbol] = b;
})
);

