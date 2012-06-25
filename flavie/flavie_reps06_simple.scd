
d.dirsons = "/pndata/flavie/sons/";
~getkeys = {|dict| 
	var arr;
	arr = Array.new(100);
	dict.collect({|val,key|arr.add(key)});
	arr.sort();
};

(
d.preps = ['go', 'fr', 'vt', 'ra', 'rb', 'ji','na','nb','nc','fa','ta','pa'];  // ajpout na nb nc fa ta pa
d.bufs = ();
d.preps.do({|prep|
	d.bufs[prep] = Buffer.readDir(d.dirsons++prep,ext:"wav",nlevels:0); 
	d[prep] = ();
	d.bufs[prep].do({|b| 
	var name, partie, num;
	name = PathName(b.path).fileNameWithoutExtension;
	partie = name[0];
	num = name[1..];
	if (~getkeys.(d[prep]).indexOf(partie.asSymbol)==nil, {d[prep][partie.asSymbol] = Array.new(100)});
	d[prep][partie.asSymbol].add(num);
	d[prep][name.asSymbol] = b;
  })
 });
)
