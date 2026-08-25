<title>Logomanuál Waldorf Olomouc</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Space+Grotesk:wght@400;500;600;700&display=swap">

<style>
:root{
  --ink:#101216; --ink-2:#54575E; --ink-3:#8B8D94;
  --white:#FFFFFF; --line:#E8E8EA;
  --ms:#BC4D96; --zs:#3F905D; --zus:#EE9B00; --ss:#4A3CB0;
  --ms-l:#D684B7; --zs-l:#72AB84; --zus-l:#EE9B00; --ss-l:#9699D9;
  --ms-tint:#EEC4DC; --zs-tint:#BBD7C2; --zus-tint:#F7C68B; --ss-tint:#CCCEEE;
  --err:#B2261E; --err-bg:#F0C5BF;
  --page:#FFFFFF; --canvas:#E9EAEC;
}
@media (prefers-color-scheme: dark){ :root:not([data-theme="light"]){ --canvas:#191B1F; } }
:root[data-theme="dark"]{ --canvas:#191B1F; }

*{box-sizing:border-box}
body{margin:0; background:var(--canvas); color:var(--ink);
  font-family:Manrope,system-ui,-apple-system,sans-serif; font-size:15px; line-height:1.7;
  -webkit-font-smoothing:antialiased; padding:32px 18px 70px}
h1,h2,h3,h4{margin:0; font-family:'Space Grotesk',system-ui,sans-serif; font-weight:500;
  line-height:1.14; letter-spacing:-.022em; text-wrap:balance}
p{margin:0}
code{font-family:ui-monospace,SFMono-Regular,Menlo,monospace; font-size:.87em;
  background:#F5F5F7; padding:2px 6px; border-radius:2px}
:focus-visible{outline:2px solid var(--ink); outline-offset:3px}

/* ---------- strana ---------- */
.page{background:var(--page); color:var(--ink); max-width:1000px; margin:0 auto 24px;
  border-radius:3px; box-shadow:0 1px 2px rgba(16,18,22,.06), 0 22px 50px -30px rgba(16,18,22,.5);
  display:flex; flex-direction:column; overflow:hidden}
.page > .inner{padding:50px 54px 32px; flex:1}
.rule{height:5px; background:__SPEC__}
.eyebrow{font-size:11px; letter-spacing:.16em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.page h2{font-size:29px; margin:12px 0 0}
.lead{margin-top:15px; color:var(--ink-2); max-width:66ch; font-size:15.5px}
.pfoot{display:flex; align-items:center; padding:13px 54px 19px; border-top:1px solid var(--line);
  font-size:10.5px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3); font-weight:700}
.pfoot .n{margin-left:auto; font-variant-numeric:tabular-nums}
h3.sub{font-size:16.5px; margin:34px 0 10px}
.note{background:#F5F5F7; border-left:3px solid var(--ink); padding:15px 19px; margin-top:20px; border-radius:2px}
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

/* ---------- obálka ---------- */
.cover .inner{padding:64px 54px 44px}
.cover h1{font-family:'Space Grotesk',sans-serif; font-weight:500; font-size:52px;
  letter-spacing:-.03em; margin:26px 0 0; line-height:1.05}
.cover .head{display:flex; align-items:center; gap:22px}
.cover .who{font-size:13px; letter-spacing:.16em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.cover .cl{margin-top:18px; font-size:17px; color:var(--ink-2); max-width:50ch}
.cover .meta{margin-top:38px; padding-top:20px; border-top:1px solid var(--line);
  display:flex; flex-wrap:wrap; gap:0 40px; row-gap:14px; font-size:13px; color:var(--ink-3)}
.cover .meta b{display:block; color:var(--ink); font-weight:600; font-size:13.5px}
.toc{margin-top:34px; display:grid; grid-template-columns:repeat(auto-fit,minmax(215px,1fr)); gap:1px;
  background:var(--line); border:1px solid var(--line); border-radius:2px}
.toc a{background:var(--white); padding:13px 16px; text-decoration:none; color:var(--ink); display:block}
.toc a:hover{background:#F5F5F7}
.toc .k{display:block; font-size:10px; letter-spacing:.14em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.toc .t{font-family:'Space Grotesk',sans-serif; font-size:14.5px; margin-top:3px; letter-spacing:-.015em}

/* ---------- lockup, varianty ---------- */
.stage{margin-top:26px; padding:34px 26px; background:#F5F5F7; border-radius:2px;
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
.zbox{background:#F5F5F7; border-radius:2px; padding:30px; display:flex;
  align-items:center; justify-content:center}
.zinner{position:relative; padding:44px; outline:1.5px dashed var(--ink-3); outline-offset:0}
.zlab{position:absolute; font-size:10px; letter-spacing:.12em; font-weight:700; color:var(--ink-3)}
.sizes{display:flex; align-items:flex-end; gap:24px; flex-wrap:wrap; background:#F5F5F7;
  border-radius:2px; padding:26px 24px; margin-top:0}
.scell{display:flex; flex-direction:column; align-items:center; gap:9px}
.scell .c{font-size:10px; letter-spacing:.11em; text-transform:uppercase; color:var(--ink-3); font-weight:700}

/* ---------- zakázané ---------- */
.dont{display:grid; grid-template-columns:repeat(3,1fr); gap:14px; margin-top:24px}
.dcell{border:1px solid var(--line); border-radius:2px; overflow:hidden}
.dcell .b{position:relative; height:112px; display:flex; align-items:center; justify-content:center;
  background:#F5F5F7; overflow:hidden}
.dcell .b.on{background:var(--zs)}
.dcell .x{position:absolute; top:7px; right:7px; width:19px; height:19px; border-radius:50%;
  background:var(--err); color:#fff; font-size:12px; font-weight:700; line-height:19px; text-align:center}
.dcell .c{padding:10px 13px; border-top:1px solid var(--line)}
.dcell .c b{display:block; font-family:'Space Grotesk',sans-serif; font-size:13px; font-weight:500}
.dcell .c span{font-size:11.5px; color:var(--ink-3)}

/* ---------- barvy ---------- */
.cols{display:grid; grid-template-columns:repeat(auto-fit,minmax(200px,1fr)); gap:14px; margin-top:24px}
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

/* ---------- tabulky ---------- */
.tw{overflow-x:auto; margin-top:20px; border:1px solid var(--line); border-radius:2px}
table{border-collapse:collapse; width:100%; min-width:640px; font-size:13.5px}
th,td{padding:11px 14px; text-align:left; vertical-align:top; border-bottom:1px solid var(--line)}
thead th{font-size:10px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3);
  font-weight:700; background:#F5F5F7}
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
.state h4{font-size:12.5px; margin-bottom:7px}
.state p{font-size:12.5px; color:var(--ink-2); line-height:1.6}
.demo{margin-top:11px; font-size:14px}
.demo a{color:var(--zs); text-decoration:underline; text-decoration-thickness:1px; text-underline-offset:3px}
.demo a.hov{text-decoration-thickness:2px}
.demo .foc{outline:2px solid var(--ink); outline-offset:2px; border-radius:2px; padding:1px 2px}
.demo .act{border-bottom:2px solid var(--zs); padding-bottom:3px; font-weight:600}
.errbox{display:block; background:var(--err-bg); color:var(--ink); padding:10px 13px; border-radius:2px;
  font-size:12.5px; border-left:3px solid var(--err)}
pre{background:#F5F5F7; padding:15px 17px; border-radius:2px; overflow-x:auto;
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
.chg{margin-top:18px; display:grid; gap:1px; background:var(--line); border:1px solid var(--line); border-radius:2px}
.chgrow{background:var(--white); padding:14px 19px; display:grid; grid-template-columns:64px 1fr; gap:16px}
.chgrow .s{font-size:10px; letter-spacing:.12em; text-transform:uppercase; font-weight:700; padding-top:2px}
.chgrow .s.m{color:var(--zus)} .chgrow .s.a{color:var(--zs)} .chgrow .s.r{color:var(--err)}
.chgrow p{font-size:13px; color:var(--ink-2); line-height:1.6}
.chgrow b{color:var(--ink)}

@media (max-width:720px){
  .page > .inner{padding:32px 22px 24px} .pfoot{padding:12px 22px 17px}
  .page h2{font-size:23px} .cover h1{font-size:36px} .cover .inner{padding:38px 22px 30px}
  .pr{grid-template-columns:1fr; gap:5px} body{padding:16px 10px 50px}
  .dont{grid-template-columns:repeat(2,1fr)}
}
</style>

<svg width="0" height="0" style="position:absolute" aria-hidden="true" focusable="false">
  <clipPath id="waldorf-spiral" transform="translate(-174.43 -275.35)">__CLIP__</clipPath>
</svg>
