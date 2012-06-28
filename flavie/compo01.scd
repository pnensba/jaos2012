(
// gotz
(
~gotz = {
 var partie='a';
 d.compo_go.do({|extrait| 
 var dur;
 if (extrait[13].asSymbol!=partie.asSymbol) {((4*60).rand+8*60).wait;}; // on attend entre 8 et 12 minutes
 partie = extrait[13];
 dur = extrait.compile.();
 dur.postln;
 dur.wait;
 });
 10.wait;
}
);

// francois
~francois = {~compo_fr.(d.fr)};
// vincent
~vincent = {~compo_vt.(d.vt)};

// rose
~rose = {
	var texte_str; 
	texte_str = ['rb','rarb'].wchoose([1/4,3/4]);
	texte_str.postln;
	if (texte_str=='rb') {~compo_rb.(d.rb)};
	if (texte_str=='rarb') {~compo_rarb.()};
};
// jim
~ji = {~compo_ji.(d.ji)};

// natAB
~natAB = {~compo_nanb.()};

// tamim
~tamim = {~compo_ta.(d.ta)};{

// pampos
~pa = {~compo_pa.()};
)

{inf.do({~ji.()})}.fork
{inf.do({~vincent.()})}.fork
{inf.do({~gotz.()})}.fork;
{inf.do({~francois.()})}.fork;
{inf.do({~rose.()})}.fork;
{inf.do({~natAB.()})}.fork;
{inf.do({~fab.()})}.fork;
{inf.do({~tamim.()})}.fork;
{inf.do({~pa.()})}.fork;


