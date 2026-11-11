<title>Logomanuál Waldorf Olomouc</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Space+Grotesk:wght@400;500;600;700&display=swap">

<style>
:root{
  --ink:#101216; --ink-2:#54575E; --ink-3:#6D707E;
  --white:#FFFFFF; --line:#E8E8EA;
  --ms:#BC4D96; --zs:#3F905D; --zus:#EE9B00; --ss:#4A3CB0;
  --ms-l:#D684B7; --zs-l:#72AB84; --zus-l:#EE9B00; --ss-l:#9699D9;
  --ms-tint:#EEC4DC; --zs-tint:#BBD7C2; --zus-tint:#F7C68B; --ss-tint:#CCCEEE;
  /* textové tokeny — jediné barvy generací, které smí nést text (kapitola 09) */
  --ms-t:#B54790; --zs-t:#337F4C; --zus-t:#A56001; --ss-t:#4A3CB0;
  --err:#B2261E; --err-bg:#F0C5BF;
  --page:#FFFFFF; --canvas:#FFFFFF;

  /* pohyb — kapitola 13 */
  --pohyb-stav:160ms;
  --pohyb-prvek:320ms;
  --pohyb-sekce:640ms;
  --pohyb-znak:1200ms;
  --krivka-klid:cubic-bezier(.2,.7,.3,1);
  --krivka-vstup:cubic-bezier(.16,1,.3,1);
  --prodleva:60ms;
}
@property --wm-uhel{ syntax:'<angle>'; initial-value:0deg; inherits:false; }

*{box-sizing:border-box}
body{margin:0; background:var(--canvas); color:var(--ink);
  font-family:Manrope,system-ui,-apple-system,sans-serif; font-size:15px; line-height:1.7;
  -webkit-font-smoothing:antialiased}
h1,h2,h3,h4{margin:0; font-family:'Space Grotesk',system-ui,sans-serif; font-weight:500;
  line-height:1.14; letter-spacing:-.022em; text-wrap:balance}
p{margin:0}
code{font-family:ui-monospace,SFMono-Regular,Menlo,monospace; font-size:.87em;
  background:color-mix(in oklab, var(--kap,#101216) 11%, #FFFFFF); padding:2px 6px; border-radius:2px}
:focus-visible{outline:2px solid var(--ink); outline-offset:3px}

/* ---------- rozcestník ---------- */
.domu{max-width:1140px; margin:0 auto; padding:clamp(26px,5vw,60px) 20px 90px}
.domu-hlava{background:var(--page); border-radius:3px; overflow:hidden; border:1px solid var(--line)}
.domu-hlava .vnitrek{display:flex; align-items:center; gap:clamp(22px,4vw,52px);
  padding:clamp(28px,4.5vw,50px); max-width:800px; margin:0 auto; --m:clamp(130px,19vw,232px)}
.domu-hlava .mark{width:var(--m); height:calc(var(--m) * 238.7 / 245.15); flex:none;
  animation:znak-vstup var(--pohyb-znak) var(--krivka-vstup) both}
.domu-hlava .mark > i{transform:scale(calc(var(--m) / 245.15px))}
.domu-hlava h1{font-family:'Space Grotesk',sans-serif; font-weight:700;
  font-size:clamp(21px,2.8vw,33px); letter-spacing:-.028em; line-height:1.14}
.domu-hlava .orgs{margin-top:11px; font-size:11.5px; letter-spacing:.15em; text-transform:uppercase;
  font-weight:700; color:var(--ink-3); line-height:1.6; text-wrap:balance}
.domu-hlava .vz{margin-top:15px; font-size:11px; letter-spacing:.14em; text-transform:uppercase;
  font-weight:700; color:var(--ink-3)}
.skupina{margin-top:clamp(24px,4vw,42px)}
.skupina .sl{font-size:10.5px; letter-spacing:.16em; text-transform:uppercase;
  font-weight:700; color:var(--ink-3)}
.dlazdice{display:grid; grid-template-columns:repeat(auto-fill,minmax(224px,1fr)); gap:13px; margin-top:13px}
.dl{display:flex; flex-direction:column; min-width:0; background:var(--page); color:inherit;
  text-decoration:none; border:1px solid var(--line); border-radius:3px; overflow:hidden;
  transition:transform var(--pohyb-stav) var(--krivka-klid),
             box-shadow var(--pohyb-stav) var(--krivka-klid),
             border-color var(--pohyb-stav) var(--krivka-klid)}
.dl:hover{transform:translateY(-3px); border-color:var(--kap);
  box-shadow:0 16px 32px -20px color-mix(in oklab, var(--kap) 70%, transparent)}
.dl .hlava{background:var(--kap); color:var(--kap-text); padding:13px 17px;
  display:flex; align-items:center; justify-content:space-between; gap:10px; min-height:58px}
.dl .c{font-family:'Space Grotesk',sans-serif; font-size:21px; font-weight:500; line-height:1;
  letter-spacing:-.02em; font-variant-numeric:tabular-nums}
.dl .telo{padding:15px 17px 18px; flex:1; display:flex; flex-direction:column; gap:7px}
.dl .t{font-family:'Space Grotesk',sans-serif; font-size:16px; letter-spacing:-.02em; line-height:1.25}
.dl .p{font-size:12.5px; color:var(--ink-2); line-height:1.55}

/* ---------- čtečka: jedna kapitola přes celou obrazovku ---------- */
.ctecka{position:fixed; inset:0; z-index:60; background:var(--canvas); display:flex; flex-direction:column}
.ctecka[hidden]{display:none}
.ct-bar{flex:none; display:flex; align-items:center; gap:12px; padding:9px 14px;
  background:var(--page); border-bottom:1px solid var(--line)}
.ct-bar button{font:inherit; font-size:11px; font-weight:700; letter-spacing:.12em;
  text-transform:uppercase; background:var(--page); color:var(--ink);
  border:1px solid var(--line); border-radius:999px; padding:7px 14px; cursor:pointer;
  transition:border-color var(--pohyb-stav) var(--krivka-klid)}
.ct-bar button:hover{border-color:var(--ink)}
.ct-bar button[disabled]{opacity:.35; cursor:default}
.ct-bar button[disabled]:hover{border-color:var(--line)}
.ct-kde{font-size:11px; letter-spacing:.13em; text-transform:uppercase; font-weight:700;
  color:var(--ink-3); min-width:0; overflow:hidden; text-overflow:ellipsis; white-space:nowrap}
/* velká tlačítka pro posun na další kapitolu */
.ct-posun{position:fixed; top:50%; translate:0 -50%; z-index:70;
  width:54px; height:54px; padding:0; border-radius:50%; border:1px solid var(--line);
  background:var(--white); color:var(--ink); cursor:pointer; font:inherit; font-size:24px;
  line-height:1; display:flex; align-items:center; justify-content:center;
  box-shadow:0 8px 22px -12px rgba(16,18,22,.55);
  transition:border-color var(--pohyb-stav) var(--krivka-klid),
             background var(--pohyb-stav) var(--krivka-klid),
             scale var(--pohyb-stav) var(--krivka-klid)}
.ct-posun.vlevo{left:18px}
.ct-posun.vpravo{right:18px}
.ct-posun:hover{border-color:var(--kap-cil,var(--ink)); scale:1.07;
  background:color-mix(in oklab, var(--kap-cil,var(--ink)) 12%, #FFFFFF)}
.ct-posun[disabled]{opacity:0; pointer-events:none}

/* postup na konci kapitoly */
.postup{display:grid; grid-template-columns:1fr 1fr; gap:1px; background:var(--line);
  border-top:1px solid var(--line)}
.postup a{background:var(--white); color:inherit; text-decoration:none;
  padding:19px 24px; display:flex; flex-direction:column; gap:5px; min-width:0;
  transition:background var(--pohyb-stav) var(--krivka-klid)}
.postup a:hover{background:color-mix(in oklab, var(--cil) 13%, #FFFFFF)}
.postup a:only-child{grid-column:1 / -1}
.postup .s{display:flex; align-items:center; gap:8px; font-size:10.5px; letter-spacing:.14em;
  text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.postup .s i{width:13px; height:13px; border-radius:2px; background:var(--cil); display:block}
.postup .t{font-family:'Space Grotesk',sans-serif; font-size:16px; letter-spacing:-.02em;
  line-height:1.25; text-wrap:balance}
.postup .dal{text-align:right; align-items:flex-end}
.ct-telo{flex:1; overflow:auto; padding:22px 18px 80px; overscroll-behavior:contain}
[data-js] .ct-telo > .page{display:none}
[data-js] .ct-telo > .page.je{display:flex}

/* ---------- strana ---------- */
.page{background:var(--page); color:var(--ink); max-width:940px; margin:0 auto 22px;
  border-radius:3px; border:1px solid var(--line);
  display:flex; flex-direction:column; overflow:hidden}
.page > .inner{padding:50px 54px 32px; flex:1}
.rule{height:5px; background:__SPECLIN__}
.page > .rule{height:6px; background:var(--kap)}
.eyebrow{font-size:11px; letter-spacing:.16em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.page h2{font-size:29px; margin:12px 0 0}
.lead{margin-top:15px; color:var(--ink-2); max-width:66ch; font-size:15.5px}
.pfoot{display:flex; align-items:center; padding:13px 54px 19px; border-top:1px solid var(--line);
  font-size:10.5px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3); font-weight:700}
.pfoot .n{margin-left:auto; font-variant-numeric:tabular-nums; letter-spacing:.1em}
h3.sub{font-size:16.5px; margin:34px 0 10px}
a.kap{color:var(--zs-t); text-decoration:underline; text-decoration-thickness:1px;
  text-underline-offset:3px; font-weight:600;
  transition:text-decoration-thickness var(--pohyb-stav) var(--krivka-klid)}
a.kap:hover{text-decoration-thickness:2px}
.note{background:var(--white); border:1px solid var(--line); border-left:3px solid var(--kap);
  padding:15px 19px; margin-top:20px; border-radius:2px}
.note p{font-size:14.5px; color:var(--ink-2)}
.note strong{color:var(--ink)}
ul{margin:13px 0 0; padding-left:19px; font-size:14.5px; color:var(--ink-2); line-height:1.75}
li{margin-bottom:6px} li strong{color:var(--ink)}

/* ---------- znak ---------- */
.mark{display:block; overflow:hidden; flex:none}
.mark > i{display:block; width:245.15px; height:238.7px; clip-path:url(#waldorf-spiral); transform-origin:0 0}
.g-spec > i{background:__SPEC__}
.g-ms > i{background:__MS__} .g-zs > i{background:__ZS__}
.g-zus > i{background:__ZUS__} .g-ss > i{background:__SS__}
.g-ink > i{background:#101216} .g-white > i{background:#FFFFFF}
.g-bad > i{background:#1B9AAA}
.g-ms-bg{background:__MS__} .g-zs-bg{background:__ZS__}
.g-zus-bg{background:__ZUS__} .g-ss-bg{background:__SS__}
.g-spec-bg{background:__SPEC__}

/* ---------- lockup, varianty ---------- */
.stage{margin-top:26px; padding:34px 26px; background:var(--white); border:1px solid var(--line); border-radius:2px;
  display:flex; align-items:center; justify-content:center; gap:26px; flex-wrap:wrap}
.stage.dark{background:var(--ink)}
.lock{display:flex; align-items:center; gap:20px}
.lock .nm{font-family:'Space Grotesk',sans-serif; font-size:26px; font-weight:500; letter-spacing:-.025em; line-height:1.1}
.lock .sub{font-size:11.5px; letter-spacing:.13em; text-transform:uppercase; font-weight:700; color:var(--ink-3); margin-top:6px}
.trio{display:grid; grid-template-columns:repeat(auto-fit,minmax(180px,1fr)); gap:16px; margin-top:24px}
.tile{border:1px solid var(--line); border-radius:2px; overflow:hidden}
.tile .body{padding:28px 20px; display:flex; align-items:center; justify-content:center; min-height:130px}
.tile .body.d{background:var(--ink)}
.tile .cap{padding:12px 16px; border-top:1px solid var(--line)}
.tile .cap b{display:block; font-family:'Space Grotesk',sans-serif; font-size:14px; font-weight:500}
.tile .cap span{font-size:12px; color:var(--ink-3)}
.tile.d .cap{border-top-color:rgba(255,255,255,.16)}

/* ---------- ochranná zóna ---------- */
.zone{margin-top:24px; display:grid; grid-template-columns:repeat(auto-fit,minmax(260px,1fr)); gap:22px}
.zbox{background:var(--white); border:1px solid var(--line); border-radius:2px; padding:30px; display:flex;
  align-items:center; justify-content:center}
.zinner{position:relative; padding:44px; outline:1.5px dashed var(--ink-3); outline-offset:0}
.zlab{position:absolute; font-size:10px; letter-spacing:.12em; font-weight:700; color:var(--ink-3)}
.sizes{display:flex; align-items:flex-end; gap:24px; flex-wrap:wrap; background:var(--white); border:1px solid var(--line);
  border-radius:2px; padding:26px 24px; margin-top:0}
.scell{display:flex; flex-direction:column; align-items:center; gap:9px}
.scell .c{font-size:10px; letter-spacing:.11em; text-transform:uppercase; color:var(--ink-3); font-weight:700}

/* ---------- zakázané ---------- */
.dont{display:grid; grid-template-columns:repeat(3,1fr); gap:14px; margin-top:24px}
.dcell{border:1px solid var(--line); border-radius:2px; overflow:hidden}
.dcell .b{position:relative; height:112px; display:flex; align-items:center; justify-content:center;
  background:var(--white); border-bottom:1px solid var(--line); overflow:hidden}
.dcell .b.on{background:var(--zs)}
.dcell .x{position:absolute; top:7px; right:7px; width:19px; height:19px; border-radius:50%;
  background:var(--err); color:#fff; font-size:12px; font-weight:700; line-height:19px; text-align:center}
.dcell .c{padding:10px 13px; border-top:1px solid var(--line)}
.dcell .c b{display:block; font-family:'Space Grotesk',sans-serif; font-size:13px; font-weight:500}
.dcell .c span{font-size:11.5px; color:var(--ink-3)}

/* ---------- barvy ---------- */
.cols{display:grid; grid-template-columns:repeat(auto-fit,minmax(200px,1fr)); gap:14px; margin-top:24px}
.sheet{display:grid; grid-template-columns:minmax(170px,210px) 1fr; gap:14px; margin-top:24px; align-items:start}
.sheet > *{min-width:0}
.sheet .col .chip{height:54px}
.sheet .znak{padding:26px 20px; display:flex; justify-content:center}
.sheet .col .info{border-top:1px solid var(--line)}
.sheet .prompts{margin-top:0}
.col{border:1px solid var(--line); border-radius:2px; overflow:hidden}
.col .chip{height:74px}
.col .info{padding:13px 15px}
.col .info b{display:block; font-family:'Space Grotesk',sans-serif; font-size:14.5px; font-weight:500}
.col .info span{display:block; font-size:11.5px; color:var(--ink-3); margin-top:4px;
  font-variant-numeric:tabular-nums}
.neutral{display:grid; grid-template-columns:repeat(auto-fit,minmax(150px,1fr)); gap:1px;
  background:var(--line); border:1px solid var(--line); border-radius:2px; margin-top:18px}
.neutral div{background:var(--white); padding:13px 15px}
.neutral b{display:block; font-size:13.5px; font-weight:600}
.neutral span{font-size:11.5px; color:var(--ink-3)}
.neutral i{display:block; width:100%; height:22px; border-radius:2px; margin-bottom:9px;
  border:1px solid rgba(16,18,22,.12)}

/* ---------- písmo ---------- */
.spec{border:1px solid var(--line); border-radius:2px; overflow:hidden; margin-top:24px}
.spec .r{padding:19px 22px; border-bottom:1px solid var(--line)}
.spec .r:last-child{border-bottom:0}
.spec .m{font-size:10.5px; letter-spacing:.15em; text-transform:uppercase; color:var(--ink-3);
  font-weight:700; margin-bottom:10px}
.sg{font-family:'Space Grotesk',sans-serif; font-weight:400; font-size:32px; letter-spacing:-.028em; line-height:1.12}
.mr{font-family:Manrope,sans-serif; font-size:15px; line-height:1.7; color:var(--ink-2); max-width:56ch}

/* ---------- aplikace ---------- */
.apps{display:grid; grid-template-columns:repeat(auto-fit,minmax(215px,1fr)); gap:14px; margin-top:24px}
.app{border:1px solid var(--line); border-radius:2px; overflow:hidden}
.app .st{height:5px}
.app .bd{padding:16px 16px 20px}
.app .hd{display:flex; align-items:center; gap:9px}
.app .org{font-family:'Space Grotesk',sans-serif; font-size:13px; font-weight:500; letter-spacing:-.015em}
.app .doc{font-family:'Space Grotesk',sans-serif; font-size:15.5px; margin-top:14px; letter-spacing:-.02em; line-height:1.25}
.app .yr{font-size:11px; letter-spacing:.13em; text-transform:uppercase; font-weight:700; color:var(--ink-3); margin-top:8px}

/* ---------- ukázky použití ---------- */
.ukazky{margin-top:20px; display:grid; gap:13px}
.u4{grid-template-columns:repeat(4,1fr)}
.u3{grid-template-columns:repeat(3,1fr)}
.u2{grid-template-columns:repeat(2,1fr)}
.mock{background:#FFFFFF; border:1px solid var(--line); border-radius:2px; overflow:hidden;
  display:flex; flex-direction:column; color:#101216}
.mock .pruh{height:5px; flex:none}
.mock .telo{padding:11px 12px 12px; flex:1; display:flex; flex-direction:column}
.mock .hlava{display:flex; align-items:center; gap:7px}
.mock .org{font-family:'Space Grotesk',sans-serif; font-size:9px; font-weight:600;
  letter-spacing:-.01em; line-height:1.15}
.mock .nad{font-family:'Space Grotesk',sans-serif; font-weight:500; letter-spacing:-.02em; line-height:1.15}
.mock .mala{font-size:7.5px; letter-spacing:.11em; text-transform:uppercase; font-weight:700; opacity:.65}
.ln{height:3.5px; border-radius:2px; background:#E8E8EA; margin-bottom:5px}
.ln.m{width:86%} .ln.s{width:58%}
.pole{height:13px; border:1px solid #E8E8EA; border-radius:2px; margin-bottom:7px}
.papir{aspect-ratio:1/1.414}
.slajd{aspect-ratio:16/9}
.plakat{aspect-ratio:2/3}
.ctverec{aspect-ratio:1/1}
.ucap{margin-top:7px; font-size:10px; letter-spacing:.1em; text-transform:uppercase;
  font-weight:700; color:var(--ink-3)}
.ublok{display:flex; flex-direction:column}
@media (max-width:720px){ .u4{grid-template-columns:repeat(2,1fr)} .u3,.u2{grid-template-columns:1fr} }

/* ---------- tabulky ---------- */
.tw{overflow-x:auto; margin-top:20px; border:1px solid var(--line); border-radius:2px}
table{border-collapse:collapse; width:100%; min-width:640px; font-size:13.5px}
th,td{padding:11px 14px; text-align:left; vertical-align:top; border-bottom:1px solid var(--line)}
thead th{font-size:10px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3);
  font-weight:700; background:color-mix(in oklab, var(--kap,#101216) 8%, #FFFFFF)}
tbody tr:last-child td{border-bottom:0}
td small{display:block; color:var(--ink-3); font-size:11.5px; margin-top:2px}
.sw{display:inline-flex; align-items:center; gap:8px; font-weight:600; white-space:nowrap}
.sw i{width:14px; height:14px; border-radius:2px; display:block; border:1px solid rgba(16,18,22,.16)}

/* ---------- plochy, stavy ---------- */
.fields{display:grid; grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
  margin-top:22px; border-radius:2px; overflow:hidden}
.field{padding:23px 17px 21px; font-family:'Space Grotesk',sans-serif; font-size:15.5px;
  font-weight:500; letter-spacing:-.02em; line-height:1.3}
.field span{display:block; font-family:Manrope,sans-serif; font-size:10.5px; font-weight:700;
  letter-spacing:.13em; text-transform:uppercase; margin-top:7px; opacity:.75}
.states{display:grid; gap:1px; background:var(--line); border:1px solid var(--line);
  border-radius:2px; margin-top:20px; grid-template-columns:repeat(auto-fit,minmax(225px,1fr))}
.state{background:var(--white); padding:17px 19px}
.states.c2{grid-template-columns:repeat(2,1fr)}
.imgrules.c2{grid-template-columns:repeat(2,1fr)}
.state h4{font-size:12.5px; margin-bottom:7px}
.state p{font-size:12.5px; color:var(--ink-2); line-height:1.6}
.demo{margin-top:11px; font-size:14px}
.demo a{color:var(--zs-t); text-decoration:underline; text-decoration-thickness:1px; text-underline-offset:3px}
.demo a.hov{text-decoration-thickness:2px}
.demo .foc{outline:2px solid var(--ink); outline-offset:2px; border-radius:2px; padding:1px 2px}
.demo .act{border-bottom:2px solid var(--zs); padding-bottom:3px; font-weight:600}
.errbox{display:block; background:var(--err-bg); color:var(--ink); padding:10px 13px; border-radius:2px;
  font-size:12.5px; border-left:3px solid var(--err)}
pre{background:color-mix(in oklab, var(--kap,#101216) 7%, #FFFFFF); border:1px solid var(--line);
  padding:15px 17px; border-radius:2px; overflow-x:auto;
  font-size:12.5px; line-height:1.65; margin:17px 0 0;
  font-family:ui-monospace,SFMono-Regular,Menlo,monospace}
.imgrules{display:grid; gap:1px; background:var(--line); border:1px solid var(--line);
  border-radius:2px; margin-top:20px; grid-template-columns:repeat(auto-fit,minmax(210px,1fr))}
.ir{background:var(--white); padding:17px 19px}
.ir h4{font-size:12.5px; margin-bottom:6px}
.ir p{font-size:12.5px; color:var(--ink-2); line-height:1.6}
.ir.no h4{color:var(--err)}
.prompts{margin-top:18px; border:1px solid var(--line); border-radius:2px; overflow:hidden}
.pr{padding:13px 17px; border-bottom:1px solid var(--line); display:grid; grid-template-columns:140px 1fr; gap:16px}
.pr:last-child{border-bottom:0}
.pr .k{font-size:10.5px; letter-spacing:.12em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.pr .v{font-size:12.5px; color:var(--ink-2); line-height:1.6}

/* ---------- pohyb ---------- */
[data-js] .page{opacity:0; transform:translateY(18px);
  transition:opacity var(--pohyb-sekce) var(--krivka-vstup),
             transform var(--pohyb-sekce) var(--krivka-vstup)}
[data-js] .page.in{opacity:1; transform:none}

/* tok barvy ve znaku — otáčí se přechod, nikdy tvar */
.g-flow > i{background:__SPECFLOW__; animation:wm-tok 9s linear infinite}
@keyframes wm-tok{ to{ --wm-uhel:360deg } }
.g-flow.once > i{animation:wm-dosed var(--pohyb-znak) var(--krivka-klid) both}
@keyframes wm-dosed{ from{ --wm-uhel:-120deg } to{ --wm-uhel:0deg } }

@keyframes znak-vstup{ from{opacity:0; transform:scale(.93)} to{opacity:1; transform:none} }

/* růst — znak prochází barvami generací, tvar se nehýbe */
.rust{position:relative; display:block; overflow:hidden; flex:none}
.rust > i{position:absolute; top:0; left:0; width:245.15px; height:238.7px;
  clip-path:url(#waldorf-spiral); transform-origin:0 0}
.rust > i + i{opacity:0; animation:rust 15s linear infinite}
.rust .r2{animation-delay:0s} .rust .r3{animation-delay:0s}
@keyframes rust{ 0%{opacity:1} 2%{opacity:0} 100%{opacity:0} }
.rust .f2{animation:rust-2 15s linear infinite}
.rust .f3{animation:rust-3 15s linear infinite}
.rust .f4{animation:rust-4 15s linear infinite}
.rust .f5{animation:rust-5 15s linear infinite}
@keyframes rust-2{ 0%{opacity:1} 2%{opacity:0} 20%{opacity:0} 22%,100%{opacity:1} }
@keyframes rust-3{ 0%{opacity:1} 2%{opacity:0} 40%{opacity:0} 42%,100%{opacity:1} }
@keyframes rust-4{ 0%{opacity:1} 2%{opacity:0} 60%{opacity:0} 62%,100%{opacity:1} }
@keyframes rust-5{ 0%{opacity:1} 2%{opacity:0} 80%{opacity:0} 82%,100%{opacity:1} }
.rustrow{display:flex; align-items:center; gap:26px; flex-wrap:wrap}
.rustpas{display:flex; height:5px; border-radius:3px; overflow:hidden; min-width:160px; flex:1}
.rustpas i{flex:1}

/* cesta generací */
.journey{margin-top:24px; border:1px solid var(--line); border-radius:2px; overflow:hidden}
.jstage{position:relative; height:152px; background:#D684B7;
  animation:j-podklad 24s step-end infinite}
@keyframes j-podklad{
  0%{background:#D684B7} 25%{background:#72AB84}
  50%{background:#EE9B00} 75%{background:#9699D9} }
.jslide{position:absolute; inset:0; opacity:0; animation:j-slide 24s linear infinite}
.jfield{position:absolute; inset:0}
.jrow{position:relative; height:100%; display:flex; align-items:center; gap:22px; padding:0 28px; color:#101216}
.jrow b{display:block; font-family:'Space Grotesk',sans-serif; font-size:23px;
  font-weight:500; letter-spacing:-.025em; line-height:1.15}
.jrow i{display:block; margin-top:7px; font-style:normal; font-size:11px; font-weight:700;
  letter-spacing:.14em; text-transform:uppercase; opacity:.72}
@keyframes j-slide{ 0%{opacity:0} 2%,25%{opacity:1} 27%,100%{opacity:0} }
.j2{animation-delay:6s} .j3{animation-delay:12s} .j4{animation-delay:18s}
.jbar{display:flex; height:5px}
.jbar i{flex:1}

/* ukázky pohybu */
.specimens{display:grid; gap:1px; background:var(--line); border:1px solid var(--line);
  border-radius:2px; margin-top:20px; grid-template-columns:repeat(auto-fit,minmax(248px,1fr))}
.sp{background:var(--white); padding:17px 19px; display:flex; flex-direction:column}
.sp h4{font-size:12.5px; margin-bottom:6px}
.sp p{font-size:12.5px; color:var(--ink-2); line-height:1.6}
.sp .plocha{margin-top:12px; flex:1; display:flex; align-items:center; min-height:62px}
.replay{margin-top:11px; align-self:flex-start; font:inherit; font-size:11px; font-weight:700;
  letter-spacing:.12em; text-transform:uppercase; color:var(--ink); background:none;
  border:1px solid var(--line); border-radius:999px; padding:5px 12px; cursor:pointer;
  transition:border-color var(--pohyb-stav) var(--krivka-klid)}
.replay:hover{border-color:var(--ink)}

.stagger span{display:block; height:9px; border-radius:2px; background:var(--zs-tint); margin-bottom:6px}
.stagger.go span{animation:prvek-vstup var(--pohyb-prvek) var(--krivka-vstup) both}
.stagger.go span:nth-child(2){animation-delay:var(--prodleva)}
.stagger.go span:nth-child(3){animation-delay:calc(var(--prodleva)*2)}
.stagger.go span:nth-child(4){animation-delay:calc(var(--prodleva)*3)}
@keyframes prvek-vstup{ from{opacity:0; transform:translateY(10px)} to{opacity:1; transform:none} }

.menu{position:relative; display:flex; gap:18px; font-size:13.5px; font-weight:600; padding-bottom:9px}
.menu button{font:inherit; background:none; border:0; padding:0 0 2px; cursor:pointer; color:var(--ink-2);
  transition:color var(--pohyb-stav) var(--krivka-klid)}
.menu button[aria-current="true"]{color:var(--ink)}
.menu .ind{position:absolute; bottom:0; height:2px; background:var(--zs); border-radius:1px;
  transition:transform var(--pohyb-prvek) var(--krivka-klid), width var(--pohyb-prvek) var(--krivka-klid);
  left:0; width:0}

.errdemo.go .errbox{animation:prvek-vstup var(--pohyb-prvek) var(--krivka-klid) both}
.nacitani{width:100%; height:5px; background:var(--zs-tint); border-radius:3px; overflow:hidden}
.nacitani i{display:block; height:100%; width:0; background:var(--zs); border-radius:3px}
.nacitani.go i{animation:nacist 2.4s var(--krivka-klid) both}
@keyframes nacist{ to{ width:100% } }

.flowrow{display:flex; align-items:center; gap:22px; flex-wrap:wrap}
.zakaz{position:relative}
.zakaz .mark{animation:zakazane-otaceni 6s linear infinite}
@keyframes zakazane-otaceni{ to{ transform:rotate(360deg) } }
.zakaz::after{content:"✕"; position:absolute; top:-4px; left:calc(50% + 30px); width:19px; height:19px;
  border-radius:50%; background:var(--err); color:#fff; font-size:12px; font-weight:700;
  line-height:19px; text-align:center}

/* přepínač pro vyzkoušení vypnutého pohybu */
.switch{display:inline-flex; align-items:center; gap:10px; margin-top:18px; font-size:12.5px;
  color:var(--ink-2); cursor:pointer}
.switch input{appearance:none; width:38px; height:21px; border-radius:999px; background:var(--line);
  position:relative; cursor:pointer; transition:background var(--pohyb-stav) var(--krivka-klid)}
.switch input::after{content:""; position:absolute; top:3px; left:3px; width:15px; height:15px;
  border-radius:50%; background:var(--white); box-shadow:0 1px 2px rgba(16,18,22,.3);
  transition:transform var(--pohyb-stav) var(--krivka-klid)}
.switch input:checked{background:var(--zs)}
.switch input:checked::after{transform:translateX(17px)}

/* vypnutý pohyb — systémové nastavení i přepínač výše */
@media (prefers-reduced-motion:reduce){
  [data-js] .page{opacity:1; transform:none; transition:none}
  *,*::before,*::after{animation:none !important; transition:none !important}
}
[data-pohyb="vypnuto"] .page{opacity:1; transform:none; transition:none}
[data-pohyb="vypnuto"] *,
[data-pohyb="vypnuto"] *::before,
[data-pohyb="vypnuto"] *::after{animation:none !important; transition:none !important}

@media (max-width:620px){ .sheet{grid-template-columns:1fr} .states.c2,.imgrules.c2{grid-template-columns:1fr} }
@media (max-width:720px){
  .page > .inner{padding:32px 22px 24px} .pfoot{padding:12px 22px 17px}
  .page h2{font-size:23px}
}
@media (max-width:1180px){
  .ct-posun{top:auto; translate:0 0; bottom:18px; width:48px; height:48px; font-size:21px}
  .ct-posun.vlevo{left:14px} .ct-posun.vpravo{right:14px}
}
@media (max-width:560px){
  .postup{grid-template-columns:1fr}
  .neutral{grid-template-columns:1fr}
  .postup .dal{text-align:left; align-items:flex-start}
  .ct-telo{padding-bottom:96px}
  .domu-hlava .vnitrek{flex-direction:column; align-items:flex-start; gap:20px}
  .ct-kde{display:none}
  .ct-telo{padding:16px 10px 70px}
  .pr{grid-template-columns:1fr; gap:5px} body{padding:16px 10px 50px}
  .dont{grid-template-columns:repeat(2,1fr)}
}
</style>

<svg width="0" height="0" style="position:absolute" aria-hidden="true" focusable="false">
  <clipPath id="waldorf-spiral" transform="translate(-174.43 -275.35)">__CLIP__</clipPath>
</svg>
