<title>Modern Waldorf 2026</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Space+Grotesk:wght@400;500;600;700&display=swap">

<style>
/* ===================================================================
   Postaveno na Logomanuálu Waldorfská škola Olomouc, v1.0 / 2026.
   Písma, barvy a pravidla znaku pocházejí z manuálu, ne z mého návrhu.
   =================================================================== */
:root{
  /* --- z manuálu --- */
  --ink:#101216; --white:#FFFFFF; --grey:#F5F5F7; --line:#E8E8EA;
  --ms:#C0509A; --zs:#3F905D; --zus:#EE9B00; --ss:#4A3CB0;
  /* --- textově bezpečné varianty (dopočítané, v manuálu chybí) --- */
  --ms-t:#BC4D96; --zs-t:#3D8553; --zus-t:#AB6703; --ss-t:#4A3CB0;
  /* --- odvozené neutrály --- */
  --ink-2:#54575E; --ink-3:#8B8D94; --surface:#FFFFFF; --ground:#FFFFFF;
  --shadow:0 1px 2px rgba(16,18,22,.05), 0 14px 34px -20px rgba(16,18,22,.32);
}
@media (prefers-color-scheme: dark){
  :root:not([data-theme="light"]){
    --ground:#0C0E11; --surface:#15181D; --grey:#1B1F25; --line:#282C34;
    --ink:#ECEEF2; --ink-2:#A7ABB4; --ink-3:#767A83;
    --ms-t:#E081BE; --zs-t:#6FBE8C; --zus-t:#E0A63C; --ss-t:#9E92E8;
    --shadow:0 1px 2px rgba(0,0,0,.6), 0 18px 44px -22px rgba(0,0,0,.9);
  }
}
:root[data-theme="dark"]{
  --ground:#0C0E11; --surface:#15181D; --grey:#1B1F25; --line:#282C34;
  --ink:#ECEEF2; --ink-2:#A7ABB4; --ink-3:#767A83;
  --ms-t:#E081BE; --zs-t:#6FBE8C; --zus-t:#E0A63C; --ss-t:#9E92E8;
  --shadow:0 1px 2px rgba(0,0,0,.6), 0 18px 44px -22px rgba(0,0,0,.9);
}

*{box-sizing:border-box}
body{
  margin:0; background:var(--ground); color:var(--ink);
  font-family:Manrope,system-ui,-apple-system,sans-serif;
  font-size:16px; line-height:1.7; -webkit-font-smoothing:antialiased;
}
h1,h2,h3,h4{margin:0; font-family:'Space Grotesk',system-ui,sans-serif; font-weight:500;
  line-height:1.14; letter-spacing:-.02em; text-wrap:balance}
p{margin:0}
:focus-visible{outline:2px solid var(--ss-t); outline-offset:3px; border-radius:2px}
.wrap{max-width:1120px; margin:0 auto; padding:0 28px}
.lab{font-size:11px; letter-spacing:.16em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}

/* ============ ZNAK — rekonstrukce ============ */
.mark{display:block; overflow:hidden; flex:none}
.mark > i{display:block; width:245.15px; height:238.7px;
  clip-path:url(#waldorf-spiral); transform-origin:0 0}
.g-spec > i{background:__SPEC__}
.g-ms   > i{background:__MS__}
.g-zs   > i{background:__ZS__}
.g-zus  > i{background:__ZUS__}
.g-ss   > i{background:__SS__}
.g-ink  > i{background:var(--ink)}
.g-white> i{background:#FFFFFF}

/* ============ MASTHEAD ============ */
.stripe{height:6px; background:__SPEC__}
.masthead{padding:64px 0 52px; border-bottom:1px solid var(--line)}
.mh-top{display:flex; align-items:flex-start; gap:30px; flex-wrap:wrap}
.masthead h1{font-size:clamp(34px,5.4vw,62px); margin:16px 0 0}
.masthead .sub{margin-top:20px; font-size:clamp(16px,1.5vw,19px); color:var(--ink-2); max-width:60ch}
.meta{margin-top:34px; padding-top:22px; border-top:1px solid var(--line);
  display:flex; flex-wrap:wrap; gap:0 40px; row-gap:16px; font-size:13px; color:var(--ink-3)}
.meta b{display:block; color:var(--ink); font-weight:600; font-size:14px}

section{padding:64px 0; border-bottom:1px solid var(--line)}
section:last-of-type{border-bottom:0}
.sec-h{font-size:clamp(23px,3vw,33px)}
.sec-lead{color:var(--ink-2); max-width:62ch; margin-top:14px; font-size:16.5px}

/* ============ obecné bloky ============ */
.grid{display:grid; gap:20px; margin-top:34px}
.grid > *, .mocks > *{min-width:0}
.g2{grid-template-columns:repeat(auto-fit,minmax(300px,1fr))}
.g4{grid-template-columns:repeat(auto-fit,minmax(210px,1fr))}
.box{background:var(--surface); border:1px solid var(--line); border-radius:3px; padding:22px}
.box h4{font-size:15px; margin-bottom:9px; font-weight:600}
.box p{font-size:14px; color:var(--ink-2); line-height:1.65}
.box ul{margin:0; padding-left:18px; font-size:14px; color:var(--ink-2); line-height:1.7}
.box li{margin-bottom:6px}
.callout{background:var(--grey); border:1px solid var(--line); border-left:3px solid var(--ss-t);
  border-radius:3px; padding:20px 22px; margin-top:26px}
.callout p{font-size:15px; color:var(--ink-2)}
.callout strong{color:var(--ink); font-weight:700}

/* ============ znak — ukázky ============ */
.markrow{display:flex; align-items:flex-end; gap:34px; flex-wrap:wrap; margin-top:32px;
  padding:30px 26px; background:var(--grey); border:1px solid var(--line); border-radius:3px}
.markcell{display:flex; flex-direction:column; align-items:center; gap:12px}
.markcell .cap{font-size:11px; letter-spacing:.1em; text-transform:uppercase; color:var(--ink-3); font-weight:700}
.markcell.dark{background:var(--ink); padding:16px; border-radius:3px}
.markcell.dark .cap{color:#8B8D94}
.sizes{display:flex; align-items:flex-end; gap:26px; flex-wrap:wrap}

.metricrow{display:flex; gap:0; margin-top:28px; border:1px solid var(--line); border-radius:3px; overflow:hidden; flex-wrap:wrap}
.metric{flex:1 1 170px; padding:20px 22px; border-right:1px solid var(--line); background:var(--surface)}
.metric:last-child{border-right:0}
.metric .v{font-family:'Space Grotesk',sans-serif; font-size:27px; font-weight:500;
  letter-spacing:-.02em; font-variant-numeric:tabular-nums}
.metric .k{font-size:12px; color:var(--ink-3); margin-top:2px}
.metric.good .v{color:var(--zs-t)}

/* ============ tabulky ============ */
.tw{overflow-x:auto; margin-top:30px; border:1px solid var(--line); border-radius:3px; background:var(--surface)}
table{border-collapse:collapse; width:100%; min-width:720px; font-size:14px}
th,td{padding:14px 16px; text-align:left; vertical-align:top; border-bottom:1px solid var(--line)}
thead th{font-size:11px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3);
  font-weight:700; background:var(--grey)}
tbody tr:last-child td{border-bottom:0}
td.num{font-variant-numeric:tabular-nums; white-space:nowrap}
.badge{display:inline-block; font-size:10.5px; font-weight:700; letter-spacing:.08em;
  text-transform:uppercase; padding:3px 8px; border-radius:2px}
.b-fail{background:#FDECEE; color:#8E2230}
.b-warn{background:#FDF3E3; color:#7A5312}
.b-ok{background:#E9F4ED; color:#1F5C38}
@media (prefers-color-scheme:dark){:root:not([data-theme="light"]) .b-fail{background:#2A1215;color:#FF8A80}
 :root:not([data-theme="light"]) .b-warn{background:#2A2011;color:#F0B95B}
 :root:not([data-theme="light"]) .b-ok{background:#12251A;color:#7FD3A0}}
:root[data-theme="dark"] .b-fail{background:#2A1215;color:#FF8A80}
:root[data-theme="dark"] .b-warn{background:#2A2011;color:#F0B95B}
:root[data-theme="dark"] .b-ok{background:#12251A;color:#7FD3A0}
.fields{display:grid; grid-template-columns:repeat(auto-fit,minmax(160px,1fr)); gap:0;
  margin-top:28px; border-radius:3px; overflow:hidden}
.field{padding:26px 20px 24px; font-family:'Space Grotesk',sans-serif; font-size:17px;
  font-weight:500; letter-spacing:-.02em; line-height:1.25}
.field span{display:block; font-family:Manrope,sans-serif; font-size:11.5px; font-weight:700;
  letter-spacing:.13em; text-transform:uppercase; margin-top:8px; opacity:.72}
.chipc{display:inline-flex; align-items:center; gap:9px; font-weight:600}
.chipc i{width:15px; height:15px; border-radius:2px; display:block; border:1px solid rgba(0,0,0,.14)}

/* ============ MOCKUPY ============ */
.mocks{margin-top:30px; display:grid; gap:24px}
.frame{border:1px solid var(--line); border-radius:4px; overflow:hidden; box-shadow:var(--shadow); background:#fff}
.fbar{display:flex; align-items:center; gap:12px; padding:8px 14px; background:var(--grey);
  border-bottom:1px solid var(--line); font-size:11px; color:var(--ink-3); font-weight:600}
.fbar .u{background:var(--surface); border:1px solid var(--line); border-radius:999px; padding:2px 11px; color:var(--ink-2)}
.fbar .k{margin-left:auto; text-transform:uppercase; letter-spacing:.14em; font-size:10px}
.cap2{margin-top:10px; font-size:12.5px; color:var(--ink-3); line-height:1.6; max-width:64ch}
.cap2 b{color:var(--ink-2); font-weight:600}

/* --- vnitřek mockupů: vždy explicitní barvy, nezávislé na motivu --- */
.mk{background:#FFFFFF; color:#101216; font-family:Manrope,sans-serif}
.mk-nav{display:flex; flex-wrap:wrap; align-items:center; gap:10px 22px; padding:13px 26px; font-size:12px;
  font-weight:600; color:#101216; border-bottom:1px solid #E8E8EA}
.mk-nav .brandwrap{display:flex; align-items:center; gap:10px; margin-right:6px}
.mk-nav .bn{font-family:'Space Grotesk',sans-serif; font-weight:500; font-size:14px; letter-spacing:-.02em}
.mk-nav .sp{margin-left:auto}
.mk-nav .cta{padding:6px 13px; border-radius:2px; color:#fff; font-size:11.5px; font-weight:700}
.ph{position:relative; overflow:hidden; display:flex; align-items:flex-end; background:#E8E8EA}
.ph .t{position:relative; z-index:2; font-size:10px; letter-spacing:.13em; text-transform:uppercase;
  font-weight:700; padding:8px 10px; line-height:1.45; background:rgba(255,255,255,.9); margin:10px; color:#101216}
.grain::after{content:""; position:absolute; inset:0; pointer-events:none; z-index:1;
  background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='200' height='200'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.85' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)'/%3E%3C/svg%3E");
  mix-blend-mode:multiply; opacity:.17}

/* Směr A */
.a-strip{height:5px}
.a-body{display:grid; grid-template-columns:1.5fr 1fr}
.a-l{padding:38px 30px 34px; border-right:1px solid #E8E8EA}
.a-h{font-family:'Space Grotesk',sans-serif; font-weight:400; font-size:clamp(27px,3.9vw,45px);
  line-height:1.05; letter-spacing:-.028em; margin:14px 0 0; color:#101216}
.a-d{margin-top:18px; font-size:15px; line-height:1.7; color:#54575E; max-width:44ch}
.a-facts{margin-top:26px; padding-top:18px; border-top:1px solid #E8E8EA; display:flex; gap:32px; flex-wrap:wrap}
.a-facts b{display:block; font-family:'Space Grotesk',sans-serif; font-size:24px; font-weight:500; letter-spacing:-.02em}
.a-facts span{font-size:10.5px; letter-spacing:.14em; text-transform:uppercase; color:#8B8D94; font-weight:700}
.a-r{position:relative; min-height:265px}
.a-list{padding:24px 30px 28px; background:#F5F5F7}
.a-item{display:grid; grid-template-columns:76px 1fr; gap:16px; padding:13px 0; border-bottom:1px solid #E8E8EA}
.a-item:last-child{border-bottom:0}
.a-item .dt{font-size:10.5px; letter-spacing:.1em; text-transform:uppercase; color:#8B8D94;
  font-weight:700; padding-top:5px; font-variant-numeric:tabular-nums}
.a-item .ti{display:block; font-family:'Space Grotesk',sans-serif; font-size:17px; font-weight:400; letter-spacing:-.018em; line-height:1.3}
.a-item .ex{display:block; font-size:13px; color:#54575E; margin-top:3px; line-height:1.6}

/* Směr B */
.b-top{position:relative; background:#FAF8F5; overflow:hidden}
.b-wash{position:absolute; inset:-10% -5% auto -5%; width:110%; height:130%; z-index:0}
.b-in{position:relative; z-index:2}
.b-main{padding:36px 28px 32px; display:grid; grid-template-columns:1.35fr 1fr; gap:28px; align-items:end}
.b-h{font-family:'Space Grotesk',sans-serif; font-weight:400; font-size:clamp(26px,3.7vw,42px);
  line-height:1.06; letter-spacing:-.028em; margin:14px 0 0}
.b-d{margin-top:16px; font-size:15px; line-height:1.7; color:#54575E; max-width:40ch}
.b-photo{position:relative; min-height:205px; overflow:hidden; display:flex; align-items:flex-end;
  background:#DCD6CC; box-shadow:0 10px 26px -16px rgba(16,18,22,.55)}
.b-cards{display:grid; grid-template-columns:repeat(4,1fr); gap:11px; padding:22px 28px 26px; background:#FFFFFF; border-top:1px solid #E8E8EA}
.b-card{position:relative; overflow:hidden; min-height:104px; padding:12px; display:flex;
  flex-direction:column; justify-content:flex-end; color:#101216}
.b-card svg{position:absolute; inset:0; width:100%; height:100%; z-index:0}
.b-card .m,.b-card .t{position:relative; z-index:2}
.b-card .m{font-size:9.5px; letter-spacing:.13em; text-transform:uppercase; font-weight:700; opacity:.66}
.b-card .t{font-family:'Space Grotesk',sans-serif; font-size:14px; line-height:1.22; margin-top:4px; font-weight:500}

/* Směr C */
.c-hero{background:#EE9B00; color:#101216}
.c-nav{border-bottom:1px solid rgba(16,18,22,.18); color:#101216}
.c-nav .cta{background:#101216; color:#FFFFFF}
.c-type{padding:34px 26px 28px}
.c-mega .out{color:transparent; -webkit-text-stroke:2px #101216}
.c-mega{font-family:'Space Grotesk',sans-serif; font-weight:700; text-transform:uppercase;
  font-size:clamp(36px,7vw,86px); line-height:.98; letter-spacing:-.045em; margin:0}
.c-meta{margin-top:22px; padding-top:14px; border-top:1px solid rgba(16,18,22,.24);
  display:flex; gap:24px; flex-wrap:wrap; font-size:11px; font-weight:700; letter-spacing:.14em; text-transform:uppercase}
.c-meta span{color:#5C4409}
.c-strip3{display:grid; grid-template-columns:repeat(3,1fr)}
.c-strip3 .ph{min-height:112px; border-right:1px solid rgba(16,18,22,.18)}
.c-strip3 .ph:last-child{border-right:0}
.c-prog{background:#FFFFFF; color:#101216; padding:22px 26px 24px}
.c-row{display:flex; align-items:baseline; gap:14px; padding:10px 0; border-bottom:1px solid #E8E8EA}
.c-row:last-child{border-bottom:0}
.c-row .n{font-size:11px; font-weight:700; letter-spacing:.08em; width:52px; flex:none; font-variant-numeric:tabular-nums}
.c-row .t{font-family:'Space Grotesk',sans-serif; font-size:16px; font-weight:400; letter-spacing:-.018em}
.c-row .x{margin-left:auto; font-size:10.5px; font-weight:700; letter-spacing:.1em; text-transform:uppercase; color:#8B8D94}

/* ============ typografický vzorník ============ */
.spec{border:1px solid var(--line); border-radius:3px; overflow:hidden; background:var(--surface); margin-top:30px}
.spec .r{padding:20px 22px; border-bottom:1px solid var(--line)}
.spec .r:last-child{border-bottom:0}
.spec .m{font-size:10.5px; letter-spacing:.16em; text-transform:uppercase; color:var(--ink-3); font-weight:700; margin-bottom:11px}
.sg{font-family:'Space Grotesk',sans-serif; font-weight:400; font-size:clamp(24px,3.3vw,38px);
  letter-spacing:-.028em; line-height:1.1}
.mr{font-family:Manrope,sans-serif; font-size:15.5px; line-height:1.7; color:var(--ink-2); max-width:52ch}

/* ============ kroky ============ */
.steps{margin-top:32px; display:grid; gap:1px; background:var(--line); border:1px solid var(--line); border-radius:3px}
.step{background:var(--surface); padding:20px 22px; display:grid; grid-template-columns:34px 1fr; gap:16px}
.step .k{font-family:'Space Grotesk',sans-serif; font-size:15px; font-weight:500; color:var(--ink-3); font-variant-numeric:tabular-nums}
.step h4{font-size:15.5px; margin-bottom:6px}
.step p{font-size:14px; color:var(--ink-2); line-height:1.65}

.foot{padding:26px 0 72px; font-size:12.5px; color:var(--ink-3); line-height:1.7}

@media (max-width:780px){
  .a-body{grid-template-columns:1fr}
  .a-l{border-right:0; border-bottom:1px solid #E8E8EA}
  .b-main{grid-template-columns:1fr}
  .b-cards{grid-template-columns:repeat(2,1fr)}
  .c-strip3{grid-template-columns:1fr}
  .wrap{padding:0 20px} section{padding:48px 0}
}
.rise{opacity:0; transform:translateY(14px); transition:opacity .5s ease, transform .5s cubic-bezier(.2,.7,.3,1)}
.rise.in{opacity:1; transform:none}
@media (prefers-reduced-motion:reduce){.rise{opacity:1; transform:none; transition:none}}
</style>

<svg width="0" height="0" style="position:absolute" aria-hidden="true" focusable="false">
  <clipPath id="waldorf-spiral" transform="translate(-174.43 -275.35)">__CLIP__</clipPath>
  <filter id="wc1" x="-25%" y="-25%" width="150%" height="150%">
    <feTurbulence type="fractalNoise" baseFrequency="0.012" numOctaves="4" seed="7" result="t"/>
    <feDisplacementMap in="SourceGraphic" in2="t" scale="44" xChannelSelector="R" yChannelSelector="G" result="d"/><feGaussianBlur in="d" stdDeviation="3"/>
  </filter>
  <filter id="wc2" x="-25%" y="-25%" width="150%" height="150%">
    <feTurbulence type="fractalNoise" baseFrequency="0.022" numOctaves="3" seed="23" result="t"/>
    <feDisplacementMap in="SourceGraphic" in2="t" scale="26" xChannelSelector="R" yChannelSelector="G" result="d"/><feGaussianBlur in="d" stdDeviation="2.4"/>
  </filter>
</svg>

<div class="stripe"></div>
<div class="wrap">

  <header class="masthead">
    <div class="mh-top">
      <span class="mark g-spec" style="width:88px;height:85.68px" aria-label="Znak Waldorfské školy Olomouc">
        <i style="transform:scale(.359)"></i></span>
      <div style="flex:1 1 300px">
        <p class="lab">Art direction · v2, postaveno na logomanuálu</p>
        <h1>Modern Waldorf 2026</h1>
      </div>
    </div>
    <p class="sub">
      Tři směry pro nový web Waldorfské školy Olomouc — tentokrát uvnitř existující identity.
      Logomanuál v1.0 určuje znak, čtyři barvy organizací a dvě písma. Směry se proto neliší
      paletou ani typografií, ale tím, <em>jak</em> se stejná značka na webu chová.
    </p>
    <div class="meta">
      <div><b>Klient</b>Waldorfská škola Olomouc</div>
      <div><b>Organizace</b>MŠ · ZŠ · ZUŠ Fantazie · SŠ</div>
      <div><b>Adresa</b>Tomkova 420/48, Olomouc-Hejčín</div>
      <div><b>Podklad</b>Logomanuál v1.0 · 2026</div>
    </div>
  </header>

  <!-- ============ CO MANUÁL MĚNÍ ============ -->
  <section class="rise">
    <h2 class="sec-h">Co se změnilo oproti první verzi</h2>
    <p class="sec-lead">
      První verze těchto směrů si vymyslela vlastní palety a písma. Manuál je dělá neplatnými —
      a to je dobře, protože nahrazuje domněnky pravidly. Zůstávají tři teze, mění se materiál.
    </p>
    <div class="grid g2">
      <div class="box">
        <h4>Padlo</h4>
        <ul>
          <li>Vymyšlené palety — inkoustová modř, vosk, ultramarín.</li>
          <li>Vymyšlená písma — Newsreader, Bricolage, Familjen, Fraunces.</li>
          <li>Adresa Rožňavská. Manuál uvádí <strong>Tomkova 420/48</strong>.</li>
          <li>Předpoklad, že škola je jedna značka. Jsou čtyři pod jednou.</li>
        </ul>
      </div>
      <div class="box">
        <h4>Zůstává</h4>
        <ul>
          <li>Tři teze: klidná mřížka, materiál a dílna, hlas.</li>
          <li>Obsahové pravidlo <strong>real people, real work, real school</strong>.</li>
          <li>Editorial jako protiváha — o to důležitější, když má značka spektrální znak.</li>
          <li>Námitka, že bez focení se rozhodnout nedá.</li>
        </ul>
      </div>
    </div>
  </section>

  <!-- ============ ZNAK ============ -->
  <section class="rise">
    <h2 class="sec-h">Znak: jde vyrobit z půl kilobajtu</h2>
    <p class="sec-lead">
      Dodané SVG kreslí barevný přechod jako <strong>999 výsečí</strong> — 110 až 124 kB na jednu
      variantu, sedm souborů. Ale spirála sama je jediná ořezová cesta o&nbsp;439 bajtech; zbytek
      je jen kuželový přechod nasekaný na plátky. Znak níže je vykreslený z té cesty a jednoho
      CSS <code>conic-gradient</code>. Není to obrázek loga — je to logo.
    </p>

    <div class="metricrow">
      <div class="metric"><p class="v">110–124 kB</p><p class="k">dodané SVG, na variantu</p></div>
      <div class="metric good"><p class="v">439 B</p><p class="k">ořezová cesta, sdílená všemi</p></div>
      <div class="metric good"><p class="v">1</p><p class="k">cesta místo sedmi souborů</p></div>
      <div class="metric good"><p class="v">~250×</p><p class="k">úspora přenosu</p></div>
    </div>

    <div class="markrow">
      <div class="markcell"><span class="mark g-spec" style="width:120px;height:116.84px"><i style="transform:scale(.4895)"></i></span><span class="cap">Plná barevná</span></div>
      <div class="markcell"><span class="mark g-ms"  style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">Mateřská</span></div>
      <div class="markcell"><span class="mark g-zs"  style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">Základní</span></div>
      <div class="markcell"><span class="mark g-zus" style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">ZUŠ Fantazie</span></div>
      <div class="markcell"><span class="mark g-ss"  style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">Střední</span></div>
      <div class="markcell"><span class="mark g-ink" style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">Jednobarevná</span></div>
      <div class="markcell dark"><span class="mark g-white" style="width:76px;height:74px"><i style="transform:scale(.31)"></i></span><span class="cap">Negativní</span></div>
    </div>
    <p class="cap2">
      <b>Všech sedm variant sdílí jednu ořezovou cestu.</b> Barvy organizací nejsou samostatné
      soubory — jsou to parametry: odstín ±16°, sytost 62 %, světlost 24→62→24 %. ZUŠ má vlastní
      hodnoty (odstín ±13°, sytost 92 %, světlost 43→62 %), proto svítí jinak než ostatní tři.
    </p>

    <div class="markrow">
      <div class="sizes">
        <div class="markcell"><span class="mark g-spec" style="width:20px;height:19.47px"><i style="transform:scale(.0816)"></i></span><span class="cap">20 px — minimum</span></div>
        <div class="markcell"><span class="mark g-spec" style="width:32px;height:31.16px"><i style="transform:scale(.1305)"></i></span><span class="cap">32 px — favicon</span></div>
        <div class="markcell"><span class="mark g-spec" style="width:44px;height:42.84px"><i style="transform:scale(.1795)"></i></span><span class="cap">44 px — hlavička</span></div>
        <div class="markcell"><span class="mark g-ink" style="width:20px;height:19.47px"><i style="transform:scale(.0816)"></i></span><span class="cap">20 px jednobarevně</span></div>
      </div>
    </div>
    <div class="callout">
      <p><strong>Nález k minimální velikosti.</strong> Manuál povoluje 20 px. Ve spektrální verzi
      se na téhle velikosti spirála slévá do šedohnědé skvrny — vyzkoušej si to výše vlevo.
      Jednobarevná verze je na 20 px čitelná. Doporučuju do manuálu doplnit pravidlo:
      <strong>pod 44 px vždy jednobarevná verze</strong>, spektrum až od 44 px nahoru.
      Týká se to favikonu, patičky a mobilní hlavičky, tedy míst, kde se znak na webu objeví nejčastěji.</p>
    </div>
  </section>

  <!-- ============ BARVY ============ -->
  <section class="rise">
    <h2 class="sec-h">Barvy: strop je fyzikální, ne estetický</h2>
    <p class="sec-lead">
      Kontrast řídí jas, ne odstín. Aby barva prošla na běžný text poměrem 4,5:1 vůči bílé,
      musí mít relativní jas nejvýš <strong>0,183</strong>. Amber #EE9B00 má 0,416 — víc než
      dvojnásobek. Žádná svítivá teplá barva tedy neprojde, ať se odstín otočí kamkoli.
      To není nedostatek manuálu, to je vlastnost světla.
    </p>
    <div class="metricrow">
      <div class="metric"><p class="v">0,416</p><p class="k">jas #EE9B00</p></div>
      <div class="metric"><p class="v">0,183</p><p class="k">strop pro text 4,5:1</p></div>
      <div class="metric good"><p class="v">8,32:1</p><p class="k">inkoust na ambru</p></div>
      <div class="metric"><p class="v">2,25:1</p><p class="k">amber jako text</p></div>
    </div>
    <p class="cap2" style="margin-top:14px">
      Otočení odstínu k oranžové zvýší sytost tmavého sourozence z 0,122 na 0,212, ale jas
      zůstane kolem 0,18 — vždycky vznikne tmavá barva. Dvoustupňový systém proto není
      kompromis, ale jediné řešení, které existuje.
    </p>

    <h3 class="sec-h" style="font-size:20px;margin-top:44px">Nejlepší varianta pro ZUŠ</h3>
    <p class="sec-lead">
      Tvůj návrh je správný a spočítal jsem k němu přesná čísla. Jen bych obrátil pořadí
      argumentu: <strong>amber není nejslabší barva systému, ale nejsilnější plocha v něm.</strong>
      Inkoust na ambru má 8,32:1 — víc než kterákoli jiná škola. Problém není amber, ale to,
      že se používá jako text.
    </p>
    <div class="grid g2">
      <div class="box" style="border-top:3px solid #EE9B00">
        <h4>Plocha — #EE9B00, beze změny</h4>
        <p>Pruh, pole, tlačítko, plakát, obal na koncert. Text na ní je vždy inkoustový,
          nikdy bílý (bílá by měla 2,25:1). Je to nejlepší poměr v celém systému a ZUŠ
          by na tom měla stavět, ne se tomu vyhýbat.</p>
      </div>
      <div class="box" style="border-top:3px solid #AB6703">
        <h4>Text a odkazy — #AB6703</h4>
        <p>Dopočítáno jako nejbližší legální barva k ambru: 4,50:1, odchylka ΔE 0,182.
          Tvůj #A36A00 dává 4,55:1 při ΔE 0,188 — prakticky totéž, jen o chlup olivovější.
          Doporučuju #AB6703, drží blíž ke zlaté.</p>
      </div>
    </div>
    <div class="callout">
      <p><strong>Ve znaku se nemění nic.</strong> Souhlas s tvou formulací — tohle není
      přebarvení znaku, ale doplnění textového tokenu vedle něj. Spirála ZUŠ zůstává
      přesně taková, jaká je.</p>
    </div>

    <h3 class="sec-h" style="font-size:20px;margin-top:44px">Oprava, kterou jsem minule přehlédl</h3>
    <p class="sec-lead">
      Napsal jsem, že nejvíc bolí ZUŠ. Po přepočtu to neplatí. <strong>Nejhorší barva systému
      je mateřská #C0509A</strong> — má 4,33:1 vůči bílé i vůči inkoustu. Není to náhoda:
      4,33 je odmocnina z 18,75, tedy přesný geometrický střed mezi bílou a inkoustem.
      Barva ležící na tomhle středu neunese ani jeden z nich. ZUŠ selhává v jedné roli,
      MŠ ve všech.
    </p>
    <div class="callout">
      <p><strong>Oprava je nepatrná.</strong> Posun #C0509A → <strong>#BC4D96</strong> má odchylku
      ΔE 0,011, tedy pouhým okem nerozeznatelnou. Tím MŠ získá 4,53:1 jako text na bílé
      i jako plocha s bílým textem. Jediná barva v systému, u které doporučuju sáhnout
      na samotnou hodnotu.</p>
    </div>

    <h3 class="sec-h" style="font-size:20px;margin-top:44px">Celá sada, po generacích</h3>
    <p class="sec-lead">
      Čtyři tokeny na školu. Pořadí sleduje cestu dítěte školou, jak jsi ji popsal —
      od mateřské po střední.
    </p>
    <div class="tw">
      <table>
        <thead><tr>
          <th>Generace</th><th>Světlá plocha<br><span style="font-weight:400;text-transform:none;letter-spacing:0">inkoust ≥ 7:1</span></th>
          <th>Sytá plocha<br><span style="font-weight:400;text-transform:none;letter-spacing:0">bílá ≥ 4,5:1</span></th>
          <th>Text na bílé<br><span style="font-weight:400;text-transform:none;letter-spacing:0">≥ 4,5:1</span></th>
          <th>Jemný tint<br><span style="font-weight:400;text-transform:none;letter-spacing:0">bloky</span></th>
        </tr></thead>
        <tbody>
          <tr>
            <td><span class="chipc"><i style="background:#C0509A"></i>Mateřská</span></td>
            <td><span class="chipc"><i style="background:#D684B7"></i>#D684B7</span><small>7,00:1</small></td>
            <td><span class="chipc"><i style="background:#BC4D96"></i>#BC4D96</span><small>4,53:1 · upraveno</small></td>
            <td><span class="chipc"><i style="background:#BC4D96"></i>#BC4D96</span><small>4,53:1</small></td>
            <td><span class="chipc"><i style="background:#EEC4DC"></i>#EEC4DC</span><small>12,1:1</small></td>
          </tr>
          <tr>
            <td><span class="chipc"><i style="background:#3F905D"></i>Základní</span></td>
            <td><span class="chipc"><i style="background:#72AB84"></i>#72AB84</span><small>7,03:1</small></td>
            <td><span class="chipc"><i style="background:#3D8553"></i>#3D8553</span><small>4,50:1</small></td>
            <td><span class="chipc"><i style="background:#3D8553"></i>#3D8553</span><small>4,50:1</small></td>
            <td><span class="chipc"><i style="background:#BBD7C2"></i>#BBD7C2</span><small>12,1:1</small></td>
          </tr>
          <tr>
            <td><span class="chipc"><i style="background:#EE9B00"></i>ZUŠ Fantazie</span></td>
            <td><span class="chipc"><i style="background:#EE9B00"></i>#EE9B00</span><small>8,32:1 · beze změny</small></td>
            <td><span class="chipc"><i style="background:#AB6703"></i>#AB6703</span><small>4,50:1</small></td>
            <td><span class="chipc"><i style="background:#AB6703"></i>#AB6703</span><small>4,50:1</small></td>
            <td><span class="chipc"><i style="background:#F7C68B"></i>#F7C68B</span><small>12,0:1</small></td>
          </tr>
          <tr>
            <td><span class="chipc"><i style="background:#4A3CB0"></i>Střední</span></td>
            <td><span class="chipc"><i style="background:#9699D9"></i>#9699D9</span><small>7,01:1</small></td>
            <td><span class="chipc"><i style="background:#4A3CB0"></i>#4A3CB0</span><small>8,19:1 · beze změny</small></td>
            <td><span class="chipc"><i style="background:#4A3CB0"></i>#4A3CB0</span><small>8,19:1</small></td>
            <td><span class="chipc"><i style="background:#CCCEEE"></i>#CCCEEE</span><small>12,2:1</small></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="fields">
      <div class="field" style="background:#D684B7;color:#101216">Mateřská<br><span>inkoust 7,00:1</span></div>
      <div class="field" style="background:#72AB84;color:#101216">Základní<br><span>inkoust 7,03:1</span></div>
      <div class="field" style="background:#EE9B00;color:#101216">ZUŠ Fantazie<br><span>inkoust 8,32:1</span></div>
      <div class="field" style="background:#4A3CB0;color:#FFFFFF">Střední<br><span>bílá 8,19:1</span></div>
    </div>
    <p class="cap2">
      <b>Jedno pravidlo místo čtyř výjimek.</b> Světlá plocha vždycky nese inkoust, sytá plocha
      vždycky bílou. Který ze dvou stupňů má škola použít, plyne z jejího odstínu: teplé a
      světlé barvy (ZUŠ) mají silnou světlou plochu, chladné a tmavé (SŠ) silnou sytou.
      Žádná plocha v systému už není černá ani šedá.
    </p>
  </section>

  <!-- ============ PĚT ORGANIZACÍ ============ -->
  <section class="rise">
    <h2 class="sec-h">Rozpor, který se objeví až na webu</h2>
    <p class="sec-lead">
      Plné spektrum znamená celý waldorfský koncept. Podbarvy znamenají jednotlivé školy,
      tedy jednotlivé generace dětí. Z toho plyne jednoduché pravidlo pro web: barva říká,
      <strong>ke které generaci právě mluvíš</strong>. Spektrum patří skupině, podbarva vždy
      jen jedné etapě cesty.
    </p>
    <p class="sec-lead" style="margin-top:14px">
      Manuál k tomu ale říká „nikdy dvě barevné verze na jedné stránce“. V tisku to sedí —
      přihláška patří jedné škole. Homepage skupiny musí ze své podstaty nabídnout všechny
      čtyři generace najednou, takže se to pravidlo na webu porušit musí; jde o to, jak vědomě.
    </p>
    <div class="grid g4">
      <div class="box" style="border-top:3px solid #C0509A">
        <h4>Mateřská škola</h4>
        <p>Nejmladší generace. Světlá plocha #D684B7 s inkoustem, sytá #BC4D96 s bílou.
          Jediná barva, u které doporučuju drobnou úpravu hodnoty.</p>
      </div>
      <div class="box" style="border-top:3px solid #3F905D">
        <h4>Základní škola</h4>
        <p>Nejdelší etapa a největší část obsahu. Zelená drží celou sekci od zápisu
          po jídelníček, text v #3D8553.</p>
      </div>
      <div class="box" style="border-top:3px solid #EE9B00">
        <h4>ZUŠ Fantazie</h4>
        <p>Prochází napříč generacemi a má nejvíc akcí a plakátů. Amber #EE9B00 jako plocha
          s inkoustem, #AB6703 na text a odkazy.</p>
      </div>
      <div class="box" style="border-top:3px solid #4A3CB0">
        <h4>Střední škola</h4>
        <p>Nejsamostatnější publikum. Jediná barva, která funguje jako text i jako sytá
          plocha bez jakékoli úpravy.</p>
      </div>
    </div>
    <div class="callout">
      <p><strong>Navrhované rozšíření pravidla.</strong> Barva generace platí uvnitř její sekce —
      tam je stránka jednobarevná přesně podle manuálu. Na rozcestníku skupiny (homepage, patička,
      hlavní menu) se čtyři barvy objevit smějí, ale <strong>jen jako identifikační značka
      v navigaci</strong>: pruh, tečka, podtržení. Nikdy ne jako čtyři obarvené nadpisy nebo čtyři
      barevné znaky vedle sebe. Na rozcestníku je znak vždy plný spektrální a text vždy inkoustový.</p>
    </div>
  </section>

  <!-- ============ PÍSMO ============ -->
  <section class="rise">
    <h2 class="sec-h">Písmo je dané, tak ať pracuje</h2>
    <p class="sec-lead">
      Space Grotesk na nadpisy, Manrope na text, řádkování 1,7, verzálky s prostrkáním 0,16 em
      jen na návěstí. Celá tahle stránka je v tom vysázená. Rozdíl mezi třemi směry proto nedělá
      výběr písma, ale jeho velikost, váha a hustota.
    </p>
    <div class="spec">
      <div class="r">
        <p class="m">Space Grotesk 400 · nadpisy, jména, data</p>
        <p class="sg">Příšerně žluťoučký kůň úpěl ďábelské ódy</p>
      </div>
      <div class="r">
        <p class="m">Space Grotesk 700 · verzálky pro směr C</p>
        <p class="sg" style="font-weight:700;text-transform:uppercase;letter-spacing:-.04em">Den otevřených dveří</p>
      </div>
      <div class="r">
        <p class="m">Manrope 400 · odstavce, řádkování 1,7</p>
        <p class="mr">Naším cílem je uchovat u dětí přirozenou touhu po získávání nových poznatků,
          vybudovat v nich smysl pro týmovou spolupráci, zdravé sebevědomí a vystavět dobrý základ
          jejich morálních hodnot.</p>
      </div>
      <div class="r">
        <p class="m">Manrope 700 · návěstí s prostrkáním 0,16 em</p>
        <p class="mr" style="font-weight:700;letter-spacing:.16em;text-transform:uppercase;font-size:12px">
          Zápis · Termíny · Dokumenty · Jídelníček · Kontakt</p>
      </div>
    </div>
    <div class="callout">
      <p><strong>Jedna výhrada, kterou nechávám na škole.</strong> Space Grotesk je geometrický
      grotesk, který se za posledních pár let stal skoro výchozím písmem technologických značek —
      nese s sebou přesně ten „startupový“ nádech, kterému se chceš vyhnout. V manuálu je,
      takže s ním pracuji. Kdyby přišla revize v2, tohle je jediná položka, u které bych se ptal
      znovu; barvy ani znak měnit nechci.</p>
    </div>
  </section>

  <!-- ============ SMĚR A ============ -->
  <article class="rise" style="padding:56px 0; border-bottom:1px solid var(--line)">
    <p class="lab">Směr A</p>
    <h2 class="sec-h" style="margin-top:12px">Pruh a mřížka</h2>
    <p class="sec-lead">
      Manuál vzatý doslova a povýšený na web. Barevný pruh, znak, přísná mřížka, inkoustový
      text, hodně bílé. Barva organizace se objeví na pruhu a v nadpisech — jinde nikde.
      Nejtišší, nejdůvěryhodnější a nejlevnější na údržbu.
    </p>
    <div class="mocks">
      <div>
        <div class="frame">
          <div class="fbar"><span class="u">waldorf-olomouc.cz/zakladni-skola</span><span class="k">Sekce ZŠ</span></div>
          <div class="mk">
            <div class="a-strip" style="background:#3F905D"></div>
            <nav class="mk-nav">
              <span class="brandwrap">
                <span class="mark g-zs" style="width:26px;height:25.3px"><i style="transform:scale(.106)"></i></span>
                <span class="bn">Základní škola</span>
              </span>
              <span>O škole</span><span>Zápis</span><span>Dokumenty</span><span>Jídelníček</span>
              <span class="sp"></span><span class="cta" style="background:#3A8455">Zápis 2026</span>
            </nav>
            <div class="a-body">
              <div class="a-l">
                <p class="lab" style="color:#3A8455">Tomkova 420/48 · Olomouc-Hejčín</p>
                <h3 class="a-h">Devět let, jedna třída,<br>jeden učitel.</h3>
                <p class="a-d">Třídní učitel jde s dětmi celou základní školou. Zná je líp než
                  rozvrh — a to je celé tajemství.</p>
                <div class="a-facts">
                  <div><b style="color:#3A8455">2010</b><span>Ve škole od</span></div>
                  <div><b>MŠ–SŠ</b><span>Celá cesta</span></div>
                  <div><b>4</b><span>Organizace</span></div>
                </div>
              </div>
              <div class="a-r">
                <div class="ph grain" style="position:absolute;inset:0;background:linear-gradient(158deg,#D7E7DC,#A6CBB2 55%,#5E9A75)">
                  <span class="t">Foto · hlavní vyučování,<br>3. třída, dokumentárně</span>
                </div>
              </div>
            </div>
            <div class="a-list">
              <p class="lab" style="color:#3A8455;padding-bottom:10px;border-bottom:2px solid #101216">Aktuálně</p>
              <div class="a-item"><span class="dt">14. 09.</span><span>
                <span class="ti">Michaelská slavnost na zahradě</span>
                <span class="ex">Odvaha, drak a chleba z vlastní pece. Od 15.00, rodiče vítáni.</span></span></div>
              <div class="a-item"><span class="dt">02. 10.</span><span>
                <span class="ti">Den otevřených dveří</span>
                <span class="ex">Můžete si sednout do hodiny hlavního vyučování. Bez rezervace.</span></span></div>
              <div class="a-item"><span class="dt">21. 10.</span><span>
                <span class="ti">Konzultace k zápisu do první třídy</span>
                <span class="ex">Individuálně, po domluvě na waldorf@waldorf-olomouc.cz.</span></span></div>
            </div>
          </div>
        </div>
        <p class="cap2"><b>Ukázkový obsah.</b> Stránka je jednobarevná přesně podle manuálu:
          zelená na pruhu, návěstích a tlačítku, všechno ostatní inkoust. Znak je ve verzi ZŠ
          a nesdílí plochu s žádnou ilustrací.</p>
      </div>
      <div class="grid g2" style="margin-top:0">
        <div class="box"><h4>Co dělá dobře</h4><ul>
          <li>Nulový konflikt s manuálem — je to jeho přímé pokračování.</li>
          <li>Rodič hledající termín zápisu ho najde okamžitě.</li>
          <li>Přežije nudný obsah: dokumenty, jídelníček, školní řád.</li>
          <li>Čtyři barevné mutace jsou jedna šablona a jedna proměnná.</li>
        </ul></div>
        <div class="box"><h4>Kde je slabý</h4><ul>
          <li>Bez skvělých fotek je prázdný — nemá čím zaujmout.</li>
          <li>Nic z „human-made“ trendu nevyužije. Působí korektně, ne vřele.</li>
          <li>Na Instagramu a plakátech nemá co nabídnout.</li>
          <li>Riziko: splyne s libovolnou jinou dobře udělanou školou.</li>
        </ul></div>
      </div>
    </div>
  </article>

  <!-- ============ SMĚR B ============ -->
  <article class="rise" style="padding:56px 0; border-bottom:1px solid var(--line)">
    <p class="lab">Směr B</p>
    <h2 class="sec-h" style="margin-top:12px">Dílna</h2>
    <p class="sec-lead">
      Materiál a textura, ale v mezích manuálu. Klíčové omezení zní: znak se nekombinuje
      s ilustracemi ani fotografiemi <em>ve stejné ploše</em>. Hlavička proto zůstává čistá
      a akvarel začíná až pod ní. Barvy washů nejsou vymyšlené — jsou to barvy organizací,
      vytažené ze spirály.
    </p>
    <div class="mocks">
      <div>
        <div class="frame">
          <div class="fbar"><span class="u">waldorf-olomouc.cz/materska-skola</span><span class="k">Sekce MŠ</span></div>
          <div class="mk">
            <div class="a-strip" style="background:#C0509A"></div>
            <nav class="mk-nav">
              <span class="brandwrap">
                <span class="mark g-ms" style="width:26px;height:25.3px"><i style="transform:scale(.106)"></i></span>
                <span class="bn">Mateřská škola</span>
              </span>
              <span>O školce</span><span>Den ve školce</span><span>Přijetí</span><span>Kontakt</span>
              <span class="sp"></span><span class="cta" style="background:#BE4B97">Přijďte se podívat</span>
            </nav>
            <div class="b-top">
              <svg class="b-wash" viewBox="0 0 800 420" preserveAspectRatio="none" aria-hidden="true">
                <ellipse cx="250" cy="150" rx="265" ry="180" fill="#C0509A" opacity="0.16" filter="url(#wc1)"/>
                <ellipse cx="600" cy="250" rx="230" ry="165" fill="#EE9B00" opacity="0.14" filter="url(#wc2)"/>
              </svg>
              <div class="b-in">
                <div class="b-main">
                  <div>
                    <p class="lab" style="color:#BE4B97">Rytmus, opakování, klid</p>
                    <h3 class="b-h">Den, který se dá<br>předvídat.</h3>
                    <p class="b-d">Ve školce se každý den opakuje ve stejném pořadí. Dítě, které ví,
                      co přijde, má sílu na to, co se učí.</p>
                  </div>
                  <div class="b-photo ph grain" style="background:linear-gradient(150deg,#F3D9E9,#E0A8C8 55%,#C471A0)">
                    <span class="t">Foto · ranní kruh,<br>Tomkova</span>
                  </div>
                </div>
              </div>
            </div>
            <div class="b-cards">
              <div class="b-card">
                <svg viewBox="0 0 200 140" preserveAspectRatio="none" aria-hidden="true">
                  <rect width="200" height="140" fill="#F7F1F5"/>
                  <ellipse cx="100" cy="70" rx="116" ry="88" fill="#C0509A" opacity="0.3" filter="url(#wc2)"/></svg>
                <span class="m">Září</span><span class="t">Michaelská<br>slavnost</span></div>
              <div class="b-card">
                <svg viewBox="0 0 200 140" preserveAspectRatio="none" aria-hidden="true">
                  <rect width="200" height="140" fill="#F2F6F3"/>
                  <ellipse cx="100" cy="70" rx="116" ry="88" fill="#3F905D" opacity="0.3" filter="url(#wc1)"/></svg>
                <span class="m">Listopad</span><span class="t">Martinská<br>lucerna</span></div>
              <div class="b-card">
                <svg viewBox="0 0 200 140" preserveAspectRatio="none" aria-hidden="true">
                  <rect width="200" height="140" fill="#F1F0F8"/>
                  <ellipse cx="100" cy="70" rx="116" ry="88" fill="#4A3CB0" opacity="0.26" filter="url(#wc2)"/></svg>
                <span class="m">Prosinec</span><span class="t">Adventní<br>spirála</span></div>
              <div class="b-card">
                <svg viewBox="0 0 200 140" preserveAspectRatio="none" aria-hidden="true">
                  <rect width="200" height="140" fill="#FAF4E9"/>
                  <ellipse cx="100" cy="70" rx="116" ry="88" fill="#EE9B00" opacity="0.32" filter="url(#wc1)"/></svg>
                <span class="m">Únor</span><span class="t">Masopustní<br>průvod</span></div>
            </div>
          </div>
        </div>
        <p class="cap2"><b>Ukázkový obsah.</b> Akvarely jsou zatím generované procedurálně
          (SVG feTurbulence) jako zástupný materiál — v ostrém provozu je nahradí <b>skeny
          skutečných prací dětí</b>. Hlavička se znakem zůstává bílá, aby pravidlo o samostatné
          ploše znaku platilo. Karty ročního rytmu jsou jediné místo, kde se čtyři barvy
          potkávají na jedné obrazovce, a je to vědomé.</p>
      </div>
      <div class="grid g2" style="margin-top:0">
        <div class="box"><h4>Co dělá dobře</h4><ul>
          <li>Jako jediný využívá to, co škola opravdu vyrábí.</li>
          <li>Nejsilnější pro MŠ a první stupeň, kde teplo rozhoduje.</li>
          <li>Funguje i v tisku: pozvánky, jarmark, plakáty.</li>
          <li>Washe v barvách organizací drží systém pohromadě.</li>
        </ul></div>
        <div class="box"><h4>Kde je slabý</h4><ul>
          <li>Naráží na manuál nejvíc — každou plochu je nutné hlídat.</li>
          <li>Textura pod odstavcem zabíjí čitelnost. Patří jen do obrazových zón.</li>
          <li>Stojí a padá s kvalitou skenů. Fotka mobilem to zabije.</li>
          <li>Riziko: nejblíž k ezoterickému dojmu, kterému se chceš vyhnout.</li>
        </ul></div>
      </div>
    </div>
  </article>

  <!-- ============ SMĚR C ============ -->
  <article class="rise" style="padding:56px 0; border-bottom:1px solid var(--line)">
    <p class="lab">Směr C</p>
    <h2 class="sec-h" style="margin-top:12px">Hlas</h2>
    <p class="sec-lead">
      Space Grotesk ve verzálkách přes celou šířku, plocha v barvě školy a dokumentární
      fotopáska. Žádná černá, žádná šeď — pole nese barvu generace, které patří. Směr pro ZUŠ,
      střední školu, koncerty a Den otevřených dveří: tam, kde škola nepotřebuje informovat,
      ale být slyšet.
    </p>
    <div class="mocks">
      <div>
        <div class="frame">
          <div class="fbar"><span class="u">waldorf-olomouc.cz/zus-fantazie/den-otevrenych-dveri</span><span class="k">Kampaň ZUŠ</span></div>
          <div class="mk">
            <div class="a-strip" style="background:#AB6703"></div>
            <nav class="mk-nav">
              <span class="brandwrap">
                <span class="mark g-zus" style="width:26px;height:25.3px"><i style="transform:scale(.106)"></i></span>
                <span class="bn">ZUŠ Fantazie</span>
              </span>
              <span>Obory</span><span>Koncerty</span><span>Přihláška</span>
              <span class="sp"></span><span class="cta" style="background:#AB6703">Přihláška</span>
            </nav>
            <div class="c-hero">
              <div class="c-type">
                <h3 class="c-mega">Den<br><span class="out">otevřených</span><br>dveří</h3>
                <div class="c-meta">
                  <b>2. 10. 2026</b><span>14.00–18.00</span>
                  <span>Tomkova 420/48</span><span>Bez rezervace</span>
                </div>
              </div>
              <div class="c-strip3">
                <div class="ph grain" style="background:linear-gradient(140deg,#F7C68B,#E0A64A)"><span class="t">Foto · zkouška orchestru</span></div>
                <div class="ph grain" style="background:linear-gradient(140deg,#F3D3A2,#D99B3C)"><span class="t">Foto · hodina houslí</span></div>
                <div class="ph grain" style="background:linear-gradient(140deg,#F9DCB4,#E5AE55)"><span class="t">Foto · výtvarný ateliér</span></div>
              </div>
            </div>
            <div class="c-prog">
              <p class="lab" style="color:#AB6703;margin-bottom:10px">Program dne</p>
              <div class="c-row"><span class="n" style="color:#AB6703">14.00</span><span class="t">Otevřené zkoušky — přijďte si sednout</span><span class="x">Všechny obory</span></div>
              <div class="c-row"><span class="n" style="color:#AB6703">15.30</span><span class="t">Vyzkoušej si nástroj — housle, flétna, bicí</span><span class="x">Pro děti</span></div>
              <div class="c-row"><span class="n" style="color:#AB6703">16.30</span><span class="t">Výtvarný ateliér a keramická dílna</span><span class="x">Otevřeno</span></div>
              <div class="c-row"><span class="n" style="color:#AB6703">17.30</span><span class="t">Koncert žáků na závěr</span><span class="x">Sál</span></div>
            </div>
          </div>
        </div>
        <p class="cap2"><b>Ukázkový obsah, přestavěný bez černé plochy.</b> Pole nese barvu školy,
          ne inkoust — a právě u ZUŠ to funguje nejlépe v celém systému: inkoustový text na
          ambru má 8,32:1. Zvýrazněný řádek je obrysový, takže zůstává inkoustový a nepotřebuje
          druhou barvu. Fotopáska je podbarvená ambrem, ne šedí.</p>
      </div>
      <div class="grid g2" style="margin-top:0">
        <div class="box"><h4>Co dělá dobře</h4><ul>
          <li>Jediný směr, který zaujme čtrnáctiletého uchazeče.</li>
          <li>Plocha v barvě školy rovnou říká, ke které generaci mluví.</li>
          <li>Převede se přímo na plakát a na Instagram bez překreslování.</li>
          <li>Space Grotesk ve velkém formátu konečně dává smysl.</li>
          <li>Fotek potřebuje málo — ale zato konkrétních.</li>
        </ul></div>
        <div class="box"><h4>Kde je slabý</h4><ul>
          <li>Na školním řádu a výroční zprávě je nepoužitelný.</li>
          <li>Nejblíž k „technologickému startupu“, před kterým varuješ.</li>
          <li>Za tři roky bude chtít osvěžit. Počítat s tím.</li>
          <li>U SŠ a MŠ nese pole bílý text, u ZŠ a ZUŠ inkoustový — nutno hlídat.</li>
        </ul></div>
      </div>
    </div>
  </article>

  <!-- ============ MEZERY MANUÁLU ============ -->
  <section class="rise">
    <h2 class="sec-h">Co manuál pro web neřeší</h2>
    <p class="sec-lead">
      Není to výtka — je to tiskový manuál a v té roli je poctivý. Tohle je seznam, který
      by měl doplnit, než se začne stavět, aby o tom nerozhodoval programátor za pochodu.
    </p>
    <div class="tw">
      <table>
        <thead><tr><th style="width:26%">Chybí</th><th>Proč to na webu vadí</th><th style="width:30%">Návrh</th></tr></thead>
        <tbody>
          <tr><td>Kontrast barev</td><td>MŠ neunese text ani plochu, ZUŠ neunese text.</td><td>Doplnit čtyři tokeny na školu podle tabulky výše.</td></tr>
          <tr><td>Minimum znaku</td><td>Spektrální verze se na 20 px slévá.</td><td>Pod 44 px jen jednobarevná verze.</td></tr>
          <tr><td>Dvě značky na stránce</td><td>Homepage skupiny musí ukázat všechny čtyři školy.</td><td>Barvy jen jako značka v navigaci.</td></tr>
          <tr><td>Stavy prvků</td><td>Není definován hover, focus, aktivní odkaz, chyba formuláře.</td><td>Odvodit z textového tokenu generace, focus jednotně inkoust.</td></tr>
          <tr><td>Zákaz šedi a černi</td><td>Plochy mají nést barvu generace, ne neutrál.</td><td>Zapsat do manuálu: pole jsou barevná, neutrál je jen bílá.</td></tr>
          <tr><td>Tmavý režim</td><td>Vyžadoval by tmavé plochy, které škola nechce.</td><td>Vědomě ho nedělat. Web zůstává světlý.</td></tr>
          <tr><td>Pravidla fotografie</td><td>Manuál řeší znak a písmo, obraz vůbec.</td><td>Dokumentární styl, žádná fotobanka, žádné AI děti.</td></tr>
          <tr><td>Nesoulad v souboru</td><td>Jednobarevný znak v dodaném SVG je #161E90, manuál uvádí inkoust #101216.</td><td>Sjednotit — podle manuálu #101216.</td></tr>
          <tr><td>Adresa</td><td>Manuál uvádí Tomkova 420/48; veřejné rejstříky uvádějí i Kosinovu a Rožňavskou.</td><td>Ověřit, která adresa patří které organizaci.</td></tr>
        </tbody>
      </table>
    </div>
  </section>

  <!-- ============ DOPORUČENÍ ============ -->
  <section class="rise">
    <h2 class="sec-h">Co bych doporučil</h2>
    <p class="sec-lead" style="max-width:66ch">
      <strong style="color:var(--ink)">Směr A jako základ celého webu, B jako materiál pro MŠ
      a slavnosti, C jen na kampaňové stránky.</strong> Manuál tenhle závěr podpírá silněji
      než moje původní argumentace: když má značka spektrální znak a čtyři syté barvy,
      je editorial klid jediné místo, odkud se to dá řídit. Barva se pak stává informací —
      říká, ve které škole zrovna jsi.
    </p>
    <div class="steps">
      <div class="step"><span class="k">01</span><div><h4>Rozhodnout o Space Grotesk</h4>
        <p>Jediná otevřená otázka z manuálu. Buď se potvrdí, a všechno ostatní z něj plyne,
          nebo se vymění — a pak je lepší to udělat teď, ne po spuštění webu.</p></div></div>
      <div class="step"><span class="k">02</span><div><h4>Doplnit manuál o webovou přílohu</h4>
        <p>Osm řádků z tabulky výše. Půl dne práce, která ušetří stovky drobných rozhodnutí
          při stavbě a zabrání tomu, aby se web a tiskoviny rozešly.</p></div></div>
      <div class="step"><span class="k">03</span><div><h4>Nasadit znak jako kód, ne jako obrázek</h4>
        <p>Ořezová cesta plus conic-gradient. Jeden zdroj pro všech sedm variant, ostrý
          v jakékoli velikosti, zhruba 250× menší přenos než dodaná SVG.</p></div></div>
      <div class="step"><span class="k">04</span><div><h4>Dva dny focení a skenování</h4>
        <p>Bez toho se mezi A a B rozhodnout nedá — oba směry stojí na obrazovém materiálu.
          Jeden den běžná výuka, jeden den dílny a slavnost, plus skeny prací v 600 dpi.</p></div></div>
      <div class="step"><span class="k">05</span><div><h4>Test na nejhorší stránce</h4>
        <p>Vítězný směr nasadit nejdřív na „Dokumenty“ a jídelníček, ne na homepage.
          Co přežije nudný obsah, přežije všechno.</p></div></div>
    </div>
  </section>

  <p class="foot">
    Postaveno na Logomanuálu Waldorfská škola Olomouc v1.0 (2026): znak, barvy organizací,
    neutrální paleta a písma Space Grotesk + Manrope pocházejí z něj. Znak je na téhle stránce
    rekonstruován z ořezové cesty dodaného SVG a vykreslen kuželovým přechodem; barvy organizací
    jsou dopočítané z parametrů původních 999 výsečí, takže se od originálu mohou o zlomek lišit —
    před tiskem platí hodnoty z manuálu. Kontrastní poměry jsou měřené podle WCAG 2.1;
    navrhované barvy jsou dopočítané v OKLCH jako nejbližší legální hodnota k originálu, ne
    odhadem. Mockupy drží barvy značky nezávisle na motivu prohlížeče; rám této prezentace
    se řídí nastavením čtenáře a není součástí návrhu.
    Texty, termíny a citace v mockupech jsou ukázkové a neověřené. Kontakt z manuálu:
    waldorf@waldorf-olomouc.cz, +420 777 850 488, Tomkova 420/48, Olomouc-Hejčín.
  </p>
</div>

<script>
(function () {
  var els = document.querySelectorAll('.rise');
  if (!('IntersectionObserver' in window) ||
      window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    els.forEach(function (el) { el.classList.add('in'); }); return;
  }
  var io = new IntersectionObserver(function (es) {
    es.forEach(function (e) {
      if (e.isIntersecting) { e.target.classList.add('in'); io.unobserve(e.target); }
    });
  }, { rootMargin: '0px 0px -6% 0px', threshold: 0.04 });
  els.forEach(function (el) { io.observe(el); });
})();
</script>
