d.dirsons = "/pndata/paquita/sons/";
d.bufs = Buffer.readDir(d.dirsons,ext:"wav",bufnumOffset:0,nlevels:0); 
(
d.s = ();
d.sn = Array.new(11);
d.bufs.do({|b| 
 var name;
 name = PathName(b.path).fileNameWithoutExtension;
 d.s[name.asSymbol] = b;
 d.sn.add(name.asSymbol);
})
);
