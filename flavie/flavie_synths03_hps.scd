(
SynthDef("magneto", { arg n = 0, amp_norm=1, amp_jeu=1;
 var sig, amps;
 sig = amp_norm*amp_jeu*PlayBuf.ar(1,n, BufRateScale.kr(n),loop:0,doneAction:2);
 sig = sig.dup(10);
 Out.ar(0,NamedControl.kr(\outs,#[1,0,0,0,0,0,0,0,0,0])*sig);
}).load(s);
);

(
~dur = {|buf| buf.numFrames/buf.sampleRate};
~joue = {|texte,partie,hps=1,amp_jeu=1| 
	var n, outs;
	if (hps.class==1.class){hps = [hps]};
	hps = hps - 1;
	hps.postln;
	outs = (0.dup(10)[hps]=1);
	n = texte[partie].bufnum;
	a = Synth.new(\magneto, [\n,n,\amp_norm,texte.vols[partie], \amp_jeu, amp_jeu]);
	a.set(\outs,outs);
	~dur.(texte[partie]);
};	
)
