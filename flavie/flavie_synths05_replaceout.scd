// ReplaceOut

(
SynthDef("magneto", { arg out=0, n = 0, amp_norm=1, amp_jeu=1;
 var sig, amps;
 sig = amp_norm*amp_jeu*PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2);
 ReplaceOut.ar(out,sig);
}).load(s);
);

(
~dur = {|buf| buf.numFrames/buf.sampleRate};

~joue = {|texte,partie,hps=1,amp_jeu=1| 
	var n, outs;
	if (hps.class==1.class){hps = [hps]};
	hps = hps - 1;
	n = texte[partie].bufnum;
	hps.do({|hp| Synth.tail(s,\magneto, [\out,hp, \n,n,\amp_norm,texte.vols[partie], \amp_jeu, amp_jeu])});
	~dur.(texte[partie]);
};	
)

