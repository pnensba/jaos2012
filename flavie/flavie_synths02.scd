(
SynthDef("magneto", { arg n = 0, out=1, amp_norm=1, amp_jeu=1;
 var sig;
 sig = amp_norm*amp_jeu*PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2);
 Out.ar(out, sig.dup(1));
}).load(s);
);

~dur = {|buf| buf.numFrames/buf.sampleRate};
~joue = {|texte,partie,hps=0,amp_jeu=1| 
	var n;
	n = texte[partie].bufnum;
	Synth.new(\magneto, [\n,n,\out,hps,\amp_norm, texte.vols[partie], \amp_jeu, amp_jeu]);
	~dur.(texte[partie]) 
};	

