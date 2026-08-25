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

<!-- ==================== OBÁLKA ==================== -->
<article class="page cover">
  <div class="rule"></div>
  <div class="inner">
    <div class="head">
      <span class="mark g-spec" style="width:76px;height:73.99px" role="img" aria-label="Znak Waldorfské školy Olomouc"><i style="transform:scale(.31)"></i></span>
      <div>
        <p class="who">Waldorfská škola Olomouc</p>
        <h1 style="margin-top:8px">Logomanuál</h1>
      </div>
    </div>
    <p class="cl">Pravidla pro znak, barvy a písmo napříč pěti organizacemi školy —
      včetně kapitoly pro web.</p>
    <div class="meta">
      <div><b>Verze</b>2.0 · 2026</div>
      <div><b>Adresa</b>Tomkova 420/48, Hejčín, 779 00 Olomouc</div>
      <div><b>Web</b>waldorf-olomouc.cz</div>
      <div><b>Design</b>WOLIP</div>
    </div>
    <div class="toc">
      <a href="#s01"><span class="k">01</span><span class="t">Znak</span></a>
      <a href="#s02"><span class="k">02</span><span class="t">Varianty</span></a>
      <a href="#s03"><span class="k">03</span><span class="t">Prostor a velikost</span></a>
      <a href="#s04"><span class="k">04</span><span class="t">Zakázané varianty</span></a>
      <a href="#s05"><span class="k">05</span><span class="t">Barvy</span></a>
      <a href="#s06"><span class="k">06</span><span class="t">Písmo</span></a>
      <a href="#s07"><span class="k">07</span><span class="t">Znak jednotlivých škol</span></a>
      <a href="#s08"><span class="k">08</span><span class="t">Aplikace</span></a>
      <a href="#s09"><span class="k">09 · Web</span><span class="t">Barvy pro obrazovku</span></a>
      <a href="#s10"><span class="k">10 · Web</span><span class="t">Znak v kódu</span></a>
      <a href="#s11"><span class="k">11 · Web</span><span class="t">Plochy, stavy, obrázky</span></a>
      <a href="#s12"><span class="k">12 · Web</span><span class="t">Rozcestník a změny</span></a>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">1</span></div>
</article>

<!-- ==================== 01 ZNAK ==================== -->
<article class="page" id="s01">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">01 · Znak</p>
    <h2>Trojitá spirála</h2>
    <p class="lead">
      Znak tvoří tři propletené spirály v plynulém barevném přechodu. Tři ramena odpovídají tomu,
      jak waldorfská pedagogika vnímá člověka — hlava, ruce a srdce. Barevný přechod prochází
      celým spektrem: z něj jsou odvozeny barvy jednotlivých organizací.
    </p>
    <p class="lead" style="margin-top:12px">
      Znak je jediný obrazový prvek identity. Nekombinuje se s dalšími ilustracemi, ornamenty
      ani fotografiemi ve stejné ploše.
    </p>
    <div class="stage">
      <div class="lock">
        <span class="mark g-spec" style="width:104px;height:101.26px" role="img" aria-label="Znak Waldorfské školy Olomouc"><i style="transform:scale(.4242)"></i></span>
        <div>
          <p class="nm">Waldorfská škola Olomouc</p>
          <p class="sub">Mateřská · Základní · ZUŠ Fantazie · Střední</p>
        </div>
      </div>
    </div>
    <p class="lead" style="margin-top:16px; font-size:13px; color:var(--ink-3)">
      Znak s názvem — základní sestava. Odstup znaku od textu je vždy alespoň polovina šířky znaku.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">2</span></div>
</article>

<!-- ==================== 02 VARIANTY ==================== -->
<article class="page" id="s02">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">02 · Varianty</p>
    <h2>Tři verze, jasná pravidla</h2>
    <p class="lead">
      Barevná verze je základní a používá se vždy, kdy to tisk dovolí. Jednobarevná inkoustová
      verze slouží pro razítka, jednobarevný tisk a formuláře. Bílá verze jen na tmavém
      nebo barevném podkladu.
    </p>
    <div class="trio">
      <div class="tile">
        <div class="body"><span class="mark g-spec" style="width:74px;height:72.05px"><i style="transform:scale(.3018)"></i></span></div>
        <div class="cap"><b>Barevná</b><span>Základní verze</span></div>
      </div>
      <div class="tile">
        <div class="body"><span class="mark g-ink" style="width:74px;height:72.05px"><i style="transform:scale(.3018)"></i></span></div>
        <div class="cap"><b>Jednobarevná</b><span>Inkoust #101216</span></div>
      </div>
      <div class="tile d">
        <div class="body d"><span class="mark g-white" style="width:74px;height:72.05px"><i style="transform:scale(.3018)"></i></span></div>
        <div class="cap"><b>Negativní</b><span>Na tmavém a barevném podkladu</span></div>
      </div>
    </div>
    <h3 class="sub">Podklady</h3>
    <div class="tw">
      <table>
        <thead><tr><th>Podklad</th><th>Která verze</th><th>Poznámka</th></tr></thead>
        <tbody>
          <tr><td>Bílá</td><td>barevná</td><td>Základní situace. Platí i pro web.</td></tr>
          <tr><td>Světlá plocha školy</td><td>barevná nebo jednobarevná</td><td>Viz strana 12, plochy s inkoustovým textem.</td></tr>
          <tr><td>Inkoust #101216</td><td>negativní</td><td>Bílá verze, nikdy barevná.</td></tr>
          <tr><td>Sytá barva školy</td><td>negativní</td><td>Bílá verze, nikdy barevná.</td></tr>
          <tr><td>Fotografie</td><td>negativní</td><td>Jen na klidném místě snímku, nikdy přes detail.</td></tr>
        </tbody>
      </table>
    </div>
    <div class="note">
      <p><strong>Změna oproti verzi 1.0.</strong> Šedá plocha jako podklad byla vyřazena.
      Plochy nesou barvu organizace, jediný neutrál je bílá. Podrobně na straně 12.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">3</span></div>
</article>

<!-- ==================== 03 PROSTOR A VELIKOST ==================== -->
<article class="page" id="s03">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">03 · Prostor a velikost</p>
    <h2>Znak potřebuje klid okolo sebe</h2>
    <div class="zone">
      <div>
        <h3 class="sub" style="margin-top:22px">Ochranná zóna</h3>
        <p class="lead" style="font-size:14.5px">
          Volný prostor okolo znaku je vždy alespoň <strong>polovina šířky znaku</strong> na všech
          stranách. Do této zóny nevstupuje text, linka, obrázek ani okraj stránky.
        </p>
        <div class="zbox" style="margin-top:16px">
          <div class="zinner">
            <span class="mark g-spec" style="width:88px;height:85.68px"><i style="transform:scale(.359)"></i></span>
            <span class="zlab" style="top:16px; left:50%; transform:translateX(-50%)">½ š</span>
            <span class="zlab" style="bottom:16px; left:50%; transform:translateX(-50%)">½ š</span>
            <span class="zlab" style="left:14px; top:50%; transform:translateY(-50%)">½ š</span>
            <span class="zlab" style="right:14px; top:50%; transform:translateY(-50%)">½ š</span>
          </div>
        </div>
      </div>
      <div>
        <h3 class="sub" style="margin-top:22px">Minimální velikost</h3>
        <p class="lead" style="font-size:14.5px">
          Pod uvedenou velikostí se spirály slévají a znak přestává být čitelný.
          Pro tisk platí <strong>8 mm</strong> šířky, pro obrazovku <strong>20 px</strong>.
          Ve spektrální verzi na obrazovce platí přísnější hranice, viz strana 11.
        </p>
        <div class="sizes" style="margin-top:16px">
          <div class="scell"><span class="mark g-spec" style="width:78px;height:75.94px"><i style="transform:scale(.3182)"></i></span><span class="c">26 mm</span></div>
          <div class="scell"><span class="mark g-spec" style="width:42px;height:40.89px"><i style="transform:scale(.1713)"></i></span><span class="c">14 mm</span></div>
          <div class="scell"><span class="mark g-ink" style="width:24px;height:23.37px"><i style="transform:scale(.0979)"></i></span><span class="c">8 mm — min.</span></div>
        </div>
      </div>
    </div>
    <h3 class="sub">Umístění na dokumentu</h3>
    <p class="lead">
      Znak stojí v levém horním rohu, 20 mm od okraje, pod barevným pruhem organizace.
      Na obálkách může být zvětšen a umístěn na střed. Jiné pozice se nepoužívají.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">4</span></div>
</article>

<!-- ==================== 04 ZAKÁZANÉ VARIANTY ==================== -->
<article class="page" id="s04">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">04 · Zakázané varianty</p>
    <h2>Co se znakem nedělat</h2>
    <p class="lead">
      Znak se používá vždy z originálního zdroje, bez úprav. Schválené jsou pouze verze
      ze stran 3 a 8 — žádné jiné přebarvení. Následující zásahy poškozují čitelnost
      i význam a nejsou přípustné.
    </p>
    <div class="dont">
      <div class="dcell">
        <div class="b"><span class="x">✕</span><span class="mark g-spec" style="width:66px;height:64.26px;transform:scale(1.5,.78)"><i style="transform:scale(.2692)"></i></span></div>
        <div class="c"><b>Nedeformovat</b><span>Proporce zůstávají</span></div>
      </div>
      <div class="dcell">
        <div class="b"><span class="x">✕</span><span class="mark g-bad" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span></div>
        <div class="c"><b>Nepřebarvovat</b><span>Jen verze ze stran 3 a 8</span></div>
      </div>
      <div class="dcell">
        <div class="b"><span class="x">✕</span><span class="mark g-spec" style="width:66px;height:64.26px;filter:drop-shadow(4px 5px 3px rgba(16,18,22,.5))"><i style="transform:scale(.2692)"></i></span></div>
        <div class="c"><b>Bez efektů</b><span>Žádný stín, obrys, 3D</span></div>
      </div>
      <div class="dcell">
        <div class="b"><span class="x">✕</span><span class="mark g-spec" style="width:66px;height:64.26px;transform:rotate(38deg)"><i style="transform:scale(.2692)"></i></span></div>
        <div class="c"><b>Neotáčet</b><span>Spirála má danou orientaci</span></div>
      </div>
      <div class="dcell">
        <div class="b on"><span class="x">✕</span><span class="mark g-spec" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span></div>
        <div class="c"><b>Ne na barevnou plochu</b><span>Tam patří bílá verze</span></div>
      </div>
      <div class="dcell">
        <div class="b" style="gap:2px"><span class="x">✕</span>
          <span class="mark g-spec" style="width:52px;height:50.63px"><i style="transform:scale(.2121)"></i></span>
          <span style="font-family:'Space Grotesk',sans-serif;font-size:13px;line-height:1.1">Waldorfská<br>škola</span></div>
        <div class="c"><b>Nepřilepovat text</b><span>Ochranná zóna platí vždy</span></div>
      </div>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">5</span></div>
</article>

<!-- ==================== 05 BARVY ==================== -->
<article class="page" id="s05">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">05 · Barvy</p>
    <h2>Každá generace má svou barvu</h2>
    <p class="lead">
      Barvy jsou vytažené ze spirály v logu. Plné spektrum znamená celý waldorfský koncept,
      podbarva znamená jednu školu, tedy jednu generaci dětí. Na jednom dokumentu se objevuje
      vždy jen jedna — jako pruh v hlavičce a jako barva nadpisů. Skupinové materiály
      používají inkoust.
    </p>
    <div class="cols">
      <div class="col">
        <div class="chip" style="background:#BC4D96"></div>
        <div class="info"><b>Mateřská škola</b><span>#BC4D96</span><span>188 · 77 · 150</span><span>C0 M59 Y20 K26</span></div>
      </div>
      <div class="col">
        <div class="chip" style="background:#3F905D"></div>
        <div class="info"><b>Základní škola</b><span>#3F905D</span><span>63 · 144 · 93</span><span>C56 M0 Y35 K44</span></div>
      </div>
      <div class="col">
        <div class="chip" style="background:#EE9B00"></div>
        <div class="info"><b>ZUŠ Fantazie</b><span>#EE9B00</span><span>238 · 155 · 0</span><span>C0 M35 Y100 K7</span></div>
      </div>
      <div class="col">
        <div class="chip" style="background:#4A3CB0"></div>
        <div class="info"><b>Střední škola · lyceum</b><span>#4A3CB0</span><span>74 · 60 · 176</span><span>C58 M66 Y0 K31</span></div>
      </div>
    </div>
    <h3 class="sub">Neutrální paleta</h3>
    <div class="neutral">
      <div><i style="background:#101216"></i><b>Inkoust</b><span>#101216 · text</span></div>
      <div><i style="background:#FFFFFF"></i><b>Bílá</b><span>#FFFFFF · plocha</span></div>
      <div><i style="background:#E8E8EA"></i><b>Linka</b><span>#E8E8EA · rámy a oddělovače</span></div>
    </div>
    <div class="note">
      <p><strong>Dvě změny oproti verzi 1.0.</strong> Mateřská se posunula z <code>#C0509A</code>
      na <code>#BC4D96</code> — původní hodnota měla vůči bílé i vůči inkoustu shodně 4,33:1,
      tedy přesný geometrický střed mezi nimi, a neunesla ani jeden z nich. Posun je pouhým
      okem nerozeznatelný. Šedá plocha <code>#F5F5F7</code> byla z palety vyřazena; místo ní
      slouží jemné tinty jednotlivých generací ze strany 10.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">6</span></div>
</article>

<!-- ==================== 06 PÍSMO ==================== -->
<article class="page" id="s06">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">06 · Písmo</p>
    <h2>Dvě písma na všechno</h2>
    <div class="spec">
      <div class="r">
        <p class="m">Nadpisy — Space Grotesk · Regular 400, Medium 500</p>
        <p class="sg">Příšerně žluťoučký kůň úpěl ďábelské ódy — 0123456789</p>
        <p class="lead" style="font-size:14px; margin-top:14px">
          Geometrický sans s výraznými, otevřenými tvary. Používá se pro nadpisy, jména, data
          a citace. Nikdy pro dlouhý běžný text ani pro formulářová pole.
        </p>
      </div>
      <div class="r">
        <p class="m">Text, tabulky, formuláře — Manrope · Regular 400, SemiBold 600, Bold 700</p>
        <p class="mr" style="font-size:19px; color:var(--ink)">Příšerně žluťoučký kůň úpěl ďábelské ódy</p>
        <p class="mr" style="margin-top:12px">
          Naším cílem je uchovat u dětí přirozenou touhu po získávání nových poznatků, vybudovat
          v nich smysl pro týmovou spolupráci, zdravé sebevědomí a vystavět dobrý základ jejich
          morálních hodnot.
        </p>
        <p class="lead" style="font-size:14px; margin-top:14px">
          Humanistický sans pro odstavce, tabulky, štítky a vyplňovací pole. Řádkování 1,7.
          Minimální velikost v tisku 9 pt, na obrazovce 15 px.
        </p>
      </div>
      <div class="r">
        <p class="m">Velká písmena s prostrkáním — Manrope 700, 0,16 em</p>
        <p class="mr" style="font-weight:700; letter-spacing:.16em; text-transform:uppercase; font-size:12.5px; color:var(--ink)">
          Zápis · Termíny · Dokumenty · Jídelníček · Kontakt
        </p>
        <p class="lead" style="font-size:14px; margin-top:14px">
          Verzálky s prostrkáním 0,16 em se používají jen pro malé návěstí nad nadpisem
          a pro popisky. Nikdy pro nadpis ani pro celou větu.
        </p>
      </div>
    </div>
    <div class="note">
      <p><strong>Česká sazba.</strong> Obě písma mají kompletní diakritiku. Používají se české
      uvozovky „takto“, pomlčka s mezerami — takto — a nezlomitelné mezery za jednopísmennými
      předložkami.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">7</span></div>
</article>

<!-- ==================== 07 ZNAK JEDNOTLIVÝCH ŠKOL ==================== -->
<article class="page" id="s07">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">07 · Znak pro jednotlivé školy</p>
    <h2>Stejná spirála, barva školy</h2>
    <p class="lead">
      Každá organizace má vlastní verzi znaku: tvar zůstává, spektrum je nahrazeno jednou barvou
      školy s přechodem od světlé ke tmavé. Používá se na materiálech dané školy. Na materiálech
      celé skupiny Waldorf Olomouc platí plná barevná verze.
    </p>
    <div class="trio" style="grid-template-columns:repeat(auto-fit,minmax(160px,1fr))">
      <div class="tile">
        <div class="body"><span class="mark g-ms" style="width:70px;height:68.16px"><i style="transform:scale(.2855)"></i></span></div>
        <div class="cap"><b>Mateřská škola</b><span>#BC4D96</span></div>
      </div>
      <div class="tile">
        <div class="body"><span class="mark g-zs" style="width:70px;height:68.16px"><i style="transform:scale(.2855)"></i></span></div>
        <div class="cap"><b>Základní škola</b><span>#3F905D</span></div>
      </div>
      <div class="tile">
        <div class="body"><span class="mark g-zus" style="width:70px;height:68.16px"><i style="transform:scale(.2855)"></i></span></div>
        <div class="cap"><b>ZUŠ Fantazie</b><span>#EE9B00</span></div>
      </div>
      <div class="tile">
        <div class="body"><span class="mark g-ss" style="width:70px;height:68.16px"><i style="transform:scale(.2855)"></i></span></div>
        <div class="cap"><b>Střední škola · lyceum</b><span>#4A3CB0</span></div>
      </div>
    </div>
    <div class="zone" style="margin-top:26px">
      <div class="note" style="margin-top:0">
        <p><strong>Kdy plnou barevnou verzi.</strong> Web skupiny a jeho rozcestník, výroční
        zpráva, zpravodaj, pozvánky na společné akce, razítka, hlavičkový papír společnosti.</p>
      </div>
      <div class="note" style="margin-top:0">
        <p><strong>Kdy barvu školy.</strong> Dokumenty, přihlášky, informace pro rodiče
        a kalendáře jedné školy. Nikdy dvě barevné verze na jedné stránce — jedinou výjimkou
        je rozcestník skupiny na webu, viz strana 13.</p>
      </div>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">8</span></div>
</article>

<!-- ==================== 08 APLIKACE ==================== -->
<article class="page" id="s08">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">08 · Aplikace</p>
    <h2>Jedna šablona, čtyři barvy</h2>
    <p class="lead">
      Každý dokument začíná stejně: barevný pruh, znak, název organizace, název dokumentu,
      školní rok. Mění se jen barva a text.
    </p>
    <div class="apps">
      <div class="app">
        <div class="st" style="background:#BC4D96"></div>
        <div class="bd">
          <div class="hd"><span class="mark g-ms" style="width:24px;height:23.37px"><i style="transform:scale(.0979)"></i></span>
            <span class="org">Mateřská škola</span></div>
          <p class="doc">Informace pro zájemce</p><p class="yr">2026/2027</p>
        </div>
      </div>
      <div class="app">
        <div class="st" style="background:#3F905D"></div>
        <div class="bd">
          <div class="hd"><span class="mark g-zs" style="width:24px;height:23.37px"><i style="transform:scale(.0979)"></i></span>
            <span class="org">Základní škola</span></div>
          <p class="doc">Organizace školního roku</p><p class="yr">2026/2027</p>
        </div>
      </div>
      <div class="app">
        <div class="st" style="background:#EE9B00"></div>
        <div class="bd">
          <div class="hd"><span class="mark g-zus" style="width:24px;height:23.37px"><i style="transform:scale(.0979)"></i></span>
            <span class="org">ZUŠ Fantazie</span></div>
          <p class="doc">Přihláška a školné</p><p class="yr">2026/2027</p>
        </div>
      </div>
      <div class="app">
        <div class="st" style="background:#4A3CB0"></div>
        <div class="bd">
          <div class="hd"><span class="mark g-ss" style="width:24px;height:23.37px"><i style="transform:scale(.0979)"></i></span>
            <span class="org">Střední škola · lyceum</span></div>
          <p class="doc">Přijímací řízení</p><p class="yr">2026/2027</p>
        </div>
      </div>
    </div>
    <h3 class="sub">Soubory a kontakt</h3>
    <div class="zone">
      <div>
        <ul style="margin-top:0">
          <li><code>waldorf-mark-clip.svg</code> — ořezová cesta pro web</li>
          <li><code>waldorf-mark-ink.svg</code> — jednobarevná</li>
          <li><code>waldorf-mark-white.svg</code> — negativní</li>
          <li><code>waldorf-mark-ms / -zs / -zus / -ss.svg</code> — barvy škol</li>
          <li><code>waldorf-mark.css</code> — znak pro web, viz strana 11</li>
        </ul>
      </div>
      <div>
        <ul style="margin-top:0">
          <li>waldorf@waldorf-olomouc.cz</li>
          <li>+420 777 850 488</li>
          <li>Tomkova 420/48, Hejčín, 779 00 Olomouc</li>
          <li>waldorf-olomouc.cz</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">9</span></div>
</article>

<!-- ==================== 09 WEB · BARVY ==================== -->
<article class="page" id="s09">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">09 · Web</p>
    <h2>Barvy pro obrazovku</h2>
    <p class="lead">
      V tisku stačí na školu jedna barva. Na webu platí WCAG a jedna hodnota nemůže zároveň
      nést text i sloužit jako plocha. Kontrast totiž řídí jas, ne odstín: barva projde na
      běžný text poměrem 4,5:1 vůči bílé jen tehdy, má-li relativní jas nejvýš 0,183.
      Amber ZUŠ má 0,416 — víc než dvojnásobek. Proto má každá generace na webu čtyři hodnoty
      místo jedné.
    </p>
    <div class="tw">
      <table>
        <thead><tr>
          <th>Generace</th><th>Světlá plocha</th><th>Sytá plocha</th>
          <th>Text na bílé</th><th>Jemný tint</th>
        </tr></thead>
        <tbody>
          <tr>
            <td><span class="sw"><i style="background:#BC4D96"></i>Mateřská</span></td>
            <td><span class="sw"><i style="background:#D684B7"></i>#D684B7</span><small>inkoust 7,00:1</small></td>
            <td><span class="sw"><i style="background:#BC4D96"></i>#BC4D96</span><small>bílá 4,53:1</small></td>
            <td><span class="sw"><i style="background:#BC4D96"></i>#BC4D96</span><small>4,53:1</small></td>
            <td><span class="sw"><i style="background:#EEC4DC"></i>#EEC4DC</span><small>inkoust 12,1:1</small></td>
          </tr>
          <tr>
            <td><span class="sw"><i style="background:#3F905D"></i>Základní</span></td>
            <td><span class="sw"><i style="background:#72AB84"></i>#72AB84</span><small>inkoust 7,03:1</small></td>
            <td><span class="sw"><i style="background:#3D8553"></i>#3D8553</span><small>bílá 4,50:1</small></td>
            <td><span class="sw"><i style="background:#3D8553"></i>#3D8553</span><small>4,50:1</small></td>
            <td><span class="sw"><i style="background:#BBD7C2"></i>#BBD7C2</span><small>inkoust 12,1:1</small></td>
          </tr>
          <tr>
            <td><span class="sw"><i style="background:#EE9B00"></i>ZUŠ Fantazie</span></td>
            <td><span class="sw"><i style="background:#EE9B00"></i>#EE9B00</span><small>inkoust 8,32:1</small></td>
            <td><span class="sw"><i style="background:#AB6703"></i>#AB6703</span><small>bílá 4,50:1</small></td>
            <td><span class="sw"><i style="background:#AB6703"></i>#AB6703</span><small>4,50:1</small></td>
            <td><span class="sw"><i style="background:#F7C68B"></i>#F7C68B</span><small>inkoust 12,0:1</small></td>
          </tr>
          <tr>
            <td><span class="sw"><i style="background:#4A3CB0"></i>Střední · lyceum</span></td>
            <td><span class="sw"><i style="background:#9699D9"></i>#9699D9</span><small>inkoust 7,01:1</small></td>
            <td><span class="sw"><i style="background:#4A3CB0"></i>#4A3CB0</span><small>bílá 8,19:1</small></td>
            <td><span class="sw"><i style="background:#4A3CB0"></i>#4A3CB0</span><small>8,19:1</small></td>
            <td><span class="sw"><i style="background:#CCCEEE"></i>#CCCEEE</span><small>inkoust 12,2:1</small></td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="fields">
      <div class="field" style="background:#D684B7;color:#101216">Mateřská<br><span>inkoust 7,00:1</span></div>
      <div class="field" style="background:#72AB84;color:#101216">Základní<br><span>inkoust 7,03:1</span></div>
      <div class="field" style="background:#EE9B00;color:#101216">ZUŠ Fantazie<br><span>inkoust 8,32:1</span></div>
      <div class="field" style="background:#4A3CB0;color:#FFFFFF">Střední · lyceum<br><span>bílá 8,19:1</span></div>
    </div>
    <h3 class="sub">Pravidla</h3>
    <ul>
      <li><strong>Světlá plocha nese vždy inkoust</strong>, sytá plocha vždy bílou. Nikdy naopak.</li>
      <li><strong>Text na bílé</strong> se používá na nadpisy, odkazy a čísla. Syté plochy nikdy jako text.</li>
      <li><strong>Jemný tint</strong> je pro bloky, tabulky a zvýrazněné odstavce; text v nich je inkoust.
        Tinty nahradily vyřazenou šedou plochu ze strany 6.</li>
      <li><strong>Amber #EE9B00 je nejlepší plocha v systému</strong> — inkoust na něm má 8,32:1,
        nejvíc ze všech čtyř. ZUŠ na tom má stavět, ne se tomu vyhýbat.</li>
      <li><strong>Střední škola je opačný případ</strong> — jediná barva, která funguje jako text
        i jako sytá plocha bez jakékoli úpravy, ale inkoust na ní má jen 2,29:1, takže nese
        vždy bílou.</li>
    </ul>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">10</span></div>
</article>

<!-- ==================== 10 WEB · ZNAK V KÓDU ==================== -->
<article class="page" id="s10">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">10 · Web</p>
    <h2>Znak se nasazuje jako kód</h2>
    <p class="lead">
      Na webu není znak obrázek, ale jedna ořezová cesta o 421 bajtech a barevný přechod.
      Všech sedm variant vzniká z téhož zdroje, je ostrých v jakékoli velikosti a mění se
      jedinou proměnnou.
    </p>
    <div class="stage" style="gap:22px">
      <div class="scell"><span class="mark g-spec" style="width:96px;height:93.47px"><i style="transform:scale(.3916)"></i></span><span class="c">Spektrum</span></div>
      <div class="scell"><span class="mark g-ms" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span><span class="c">Mateřská</span></div>
      <div class="scell"><span class="mark g-zs" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span><span class="c">Základní</span></div>
      <div class="scell"><span class="mark g-zus" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span><span class="c">ZUŠ</span></div>
      <div class="scell"><span class="mark g-ss" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span><span class="c">Střední</span></div>
      <div class="scell"><span class="mark g-ink" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span><span class="c">Jednobarevná</span></div>
      <div class="scell" style="background:#101216;padding:13px;border-radius:2px">
        <span class="mark g-white" style="width:60px;height:58.42px"><i style="transform:scale(.2448)"></i></span>
        <span class="c" style="color:#8B8D94">Negativní</span></div>
    </div>
    <pre>&lt;!-- jednou kdekoli v &lt;body&gt;: obsah waldorf-mark-clip.svg --&gt;
&lt;link rel="stylesheet" href="waldorf-mark.css"&gt;

&lt;span class="wm wm--zs" style="--wm-size:44px"
      role="img" aria-label="Základní škola"&gt;&lt;/span&gt;</pre>
    <h3 class="sub">Minimální velikost na obrazovce hlídá kód</h3>
    <p class="lead">
      Strana 4 uvádí pro obrazovku 20 px. To platí pro jednobarevnou verzi. Ve spektrální
      a barevné verzi se na téhle velikosti spirála slévá, proto <strong>pod 44 px platí vždy
      jednobarevná verze</strong>. Přepnutí obstará CSS samo, zapíše se jen varianta a velikost.
    </p>
    <div class="sizes">
      <div class="scell"><span class="mark g-spec" style="width:20px;height:19.47px"><i style="transform:scale(.0816)"></i></span><span class="c">20 px — slévá se</span></div>
      <div class="scell"><span class="mark g-ink" style="width:20px;height:19.47px"><i style="transform:scale(.0816)"></i></span><span class="c">20 px — správně</span></div>
      <div class="scell"><span class="mark g-spec" style="width:44px;height:42.84px"><i style="transform:scale(.1795)"></i></span><span class="c">44 px — spektrum od této velikosti</span></div>
      <div class="scell"><span class="mark g-spec" style="width:72px;height:70.11px"><i style="transform:scale(.2937)"></i></span><span class="c">72 px</span></div>
    </div>
    <div class="tw">
      <table>
        <thead><tr><th>Soubor</th><th>K čemu</th><th>Velikost</th></tr></thead>
        <tbody>
          <tr><td><code>waldorf-mark-clip.svg</code></td><td>ořezová cesta, vkládá se do stránky jednou</td><td>608 B</td></tr>
          <tr><td><code>waldorf-mark.css</code></td><td>proměnné, sedm variant, pravidlo velikosti</td><td>5,3 kB</td></tr>
          <tr><td><code>waldorf-mark-ink.svg</code></td><td>favicon, e-mailová šablona, razítko</td><td>560 B</td></tr>
          <tr><td><code>waldorf-mark-white.svg</code></td><td>negativní verze samostatně</td><td>560 B</td></tr>
          <tr><td><code>build_svg.py</code></td><td>barevná samostatná SVG pro tisk a sociální sítě</td><td>13,4 kB / kus</td></tr>
        </tbody>
      </table>
    </div>
    <div class="note">
      <p><strong>Mimo web platí soubory.</strong> Barevný přechod je CSS a do SVG se nepřenese.
      Pro tisk, e-mail a sociální sítě slouží vygenerovaná samostatná SVG. Jejich výseče se
      mírně překrývají — bez překryvu vznikají mezi nimi antialiasové spáry, které se projeví
      jako paprsky.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">11</span></div>
</article>

<!-- ==================== 11 WEB · PLOCHY, STAVY, OBRÁZKY ==================== -->
<article class="page" id="s11">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">11 · Web</p>
    <h2>Plochy, stavy a obrázky</h2>
    <p class="lead">
      Tři věci, které tiskový manuál neřešil, protože je papír nepotřebuje: čím se plochy
      vyplňují, jak vypadají prvky pod kurzorem a co smí být na fotkách.
    </p>
    <h3 class="sub">Plochy nesou barvu</h3>
    <ul>
      <li><strong>Žádná černá, šedá ani béžová plocha.</strong> Pole má barvu generace,
        které patří. Jediný neutrál je bílá.</li>
      <li>Inkoust <code>#101216</code> zůstává barvou textu, nikoli barvou ploch.</li>
      <li>Podklady pod fotkami a prázdné stavy se podbarvují jemným tintem generace,
        nikdy neutrální šedí.</li>
      <li>Tmavý režim se vědomě nedělá. Vyžadoval by tmavé plochy, které do systému nepatří.</li>
    </ul>
    <h3 class="sub">Stavy prvků</h3>
    <div class="states">
      <div class="state">
        <h4>Odkaz</h4>
        <p>Textová barva generace, podtržení 1 px s odstupem 3 px.</p>
        <p class="demo"><a href="#s11">termíny zápisu</a></p>
      </div>
      <div class="state">
        <h4>Pod kurzorem</h4>
        <p>Podtržení zesílí na 2 px. Barva se nemění — ztmavení by rozbilo kontrast.</p>
        <p class="demo"><a href="#s11" class="hov">termíny zápisu</a></p>
      </div>
      <div class="state">
        <h4>Zaměření z klávesnice</h4>
        <p>Obrys 2 px inkoustem s odstupem 2 px. Stejný ve všech čtyřech generacích.</p>
        <p class="demo"><span class="foc">termíny zápisu</span></p>
      </div>
      <div class="state">
        <h4>Aktivní položka menu</h4>
        <p>Spodní linka 2 px v textové barvě generace, písmo v polotučném řezu.</p>
        <p class="demo"><span class="act">Základní škola</span></p>
      </div>
      <div class="state">
        <h4>Chyba ve formuláři</h4>
        <p>Červená <code>#B2261E</code>, 6,57:1. Plocha hlášky <code>#F0C5BF</code>.</p>
        <p class="demo"><span class="errbox">Vyplňte prosím datum narození dítěte.</span></p>
      </div>
      <div class="state">
        <h4>Potvrzení</h4>
        <p>Bez barvy — inkoust a ikona. Zelená by se v sekci základní školy pletla s její
          vlastní barvou.</p>
        <p class="demo">✓ Přihláška odeslána.</p>
      </div>
    </div>
    <div class="note">
      <p><strong>Proč chybová červená a ne zelená pro úspěch.</strong> Červená <code>#B2261E</code>
      je od mateřské vzdálená 46° a od ZUŠ 43°, takže se s žádnou barvou generace neplete.
      Zelená by se ale s barvou základní školy pletla vždy — proto se úspěch značí inkoustem
      a ikonou, ne barvou.</p>
    </div>
    <h3 class="sub">Obrázky</h3>
    <div class="imgrules">
      <div class="ir">
        <h4>Cíl: skutečná škola</h4>
        <p>Dokumentární fotografie ze školy: ruce při práci, sešity, dílna, zahrada, jeviště,
          zkušebna. Nedokonalé světlo je součástí stylu.</p>
      </div>
      <div class="ir no">
        <h4>Nikdy fotobanka</h4>
        <p>Usmívající se modelové v bílém studiu popírají všechno, co škola o sobě říká.</p>
      </div>
      <div class="ir no">
        <h4>Nikdy vymyšlené děti</h4>
        <p>Umělá fotografie dítěte vydávaná za žáka školy je tvrzení o skutečnosti, které
          neplatí. To platí i pro dočasné použití.</p>
      </div>
      <div class="ir">
        <h4>Dočasně: materiál, ne lidé</h4>
        <p>Než budou vlastní fotky, používají se generované snímky <strong>materiálů
          a detailů</strong> — bez rozpoznatelných tváří.</p>
      </div>
    </div>
    <p class="lead" style="margin-top:18px">
      Generovaný obrázek je stavební lešení, ne fasáda. Proto platí: žádné tváře, žádný záběr,
      který tvrdí „tohle je naše třída“, každý takový soubor má v názvu předponu <code>tmp-</code>
      a v redakčním systému štítek <em>dočasné</em>, aby šlo kdykoli vypsat, co ještě čeká
      na výměnu.
    </p>
    <div class="prompts">
      <div class="pr"><span class="k">Materiál</span><span class="v">Detail ručního papíru s vlákny, akvarelová skvrna v barvě generace, měkké denní světlo z boku, bez lidí.</span></div>
      <div class="pr"><span class="k">Dílna</span><span class="v">Hoblina, dláto a kus lipového dřeva na ponku, shora, přirozené světlo, bez rukou a tváří.</span></div>
      <div class="pr"><span class="k">Hudba</span><span class="v">Housle a notový sešit na dřevěné židli v prázdné zkušebně, ranní světlo, bez lidí.</span></div>
      <div class="pr"><span class="k">Střední škola</span><span class="v">Rozdělaná výroční práce na ponku — nákres, kovářské kleště, svěrák. Bez lidí.</span></div>
      <div class="pr"><span class="k">Formát</span><span class="v">3:2 na šířku pro pásky, 4:5 na výšku pro karty. Bez textu, bez log, bez ostrého protisvětla.</span></div>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">12</span></div>
</article>

<!-- ==================== 12 WEB · ROZCESTNÍK A ZMĚNY ==================== -->
<article class="page" id="s12">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">12 · Web</p>
    <h2>Čtyři generace na jedné stránce</h2>
    <p class="lead">
      Strana 8 říká: nikdy dvě barevné verze na jedné stránce. V tisku to platí — přihláška
      patří jedné škole. Rozcestník skupiny ale musí ze své podstaty nabídnout všechny čtyři
      generace najednou. Tohle je jediné povolené místo, kde se to pravidlo poruší.
    </p>
    <h3 class="sub">Co kde platí</h3>
    <ul>
      <li><strong>Sekce jedné školy</strong> — jedna barva generace, znak ve variantě té školy.
        Přesně podle strany 8.</li>
      <li><strong>Rozcestník skupiny</strong> — znak vždy plný spektrální, text vždy inkoustový.
        Barvy generací se smějí objevit <strong>jen jako značka v navigaci</strong>: pruh,
        tečka, podtržení.</li>
      <li><strong>Nikdy</strong> čtyři obarvené nadpisy ani čtyři barevné znaky vedle sebe.</li>
      <li>Plné spektrum znamená celý waldorfský koncept, podbarva jednu etapu cesty.
        Barva na stránce říká, ke které generaci se právě mluví.</li>
    </ul>
    <h3 class="sub">Shrnutí změn oproti verzi 1.0</h3>
    <div class="chg">
      <div class="chgrow"><span class="s m">Mění</span><p><b>Mateřská #C0509A → #BC4D96.</b> Jediná změněná barevná hodnota. Strana 6.</p></div>
      <div class="chgrow"><span class="s m">Mění</span><p><b>Jednobarevný znak sjednocen na #101216.</b> Dodaný soubor měl #161E90, strana 3 uvádí inkoust. Platí manuál.</p></div>
      <div class="chgrow"><span class="s r">Ruší</span><p><b>Šedá plocha #F5F5F7.</b> Plochy nesou barvu generace, neutrál je jen bílá. Nahrazují ji jemné tinty ze strany 10.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Čtyři tokeny na generaci</b> místo jedné hodnoty — strana 10.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pod 44 px jen jednobarevný znak</b> na obrazovce — strana 11.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Znak jako kód</b> a soubory pro tisk a e-mail — strana 11.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Stavy prvků</b> a chybová červená #B2261E — strana 12.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pravidla pro obrázky</b> včetně dočasného režimu bez vlastních fotek — strana 12.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Výjimka pro rozcestník skupiny</b> — tato strana.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Rozhodnutí nedělat tmavý režim</b> — strana 12.</p></div>
    </div>
    <div class="note">
      <p><strong>Beze změny zůstává.</strong> Tvar znaku a všech sedm variant. Space Grotesk
      a Manrope. Barvy základní školy, ZUŠ Fantazie a střední školy. Ochranná zóna, umístění
      na dokumentu a zakázané varianty ze stran 4 a 5. Logika, podle níž plné spektrum patří
      celku a podbarva jedné škole.</p>
    </div>
    <p class="lead" style="margin-top:24px; font-size:12.5px; color:var(--ink-3)">
      Kontrastní poměry měřené podle WCAG 2.1 proti bílé, případně proti inkoustu #101216.
      Barvy doplněné ve verzi 2.0 jsou dopočítané v OKLCH jako nejbližší vyhovující hodnota
      k původní, ne odhadem. Hodnoty CMYK jsou orientační — před tiskem je ověřte v tiskárně.
      Znak je v tomto dokumentu vykreslen z ořezové cesty originálního souboru.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">13</span></div>
</article>
