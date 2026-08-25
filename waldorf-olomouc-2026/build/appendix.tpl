<title>Waldorf Olomouc pro web</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&family=Space+Grotesk:wght@400;500;600;700&display=swap">

<style>
:root{
  --ink:#101216; --ink-2:#54575E; --ink-3:#8B8D94;
  --white:#FFFFFF; --grey:#F5F5F7; --line:#E8E8EA;
  --ms:#C0509A; --zs:#3F905D; --zus:#EE9B00; --ss:#4A3CB0;
  --ms-t:#BC4D96; --zs-t:#3D8553; --zus-t:#AB6703; --ss-t:#4A3CB0;
  --err:#B2261E; --err-bg:#F0C5BF;
  --page:#FFFFFF; --canvas:#E9EAEC;
}
@media (prefers-color-scheme: dark){
  :root:not([data-theme="light"]){ --canvas:#1A1C20; }
}
:root[data-theme="dark"]{ --canvas:#1A1C20; }

*{box-sizing:border-box}
body{margin:0; background:var(--canvas); color:var(--ink);
  font-family:Manrope,system-ui,-apple-system,sans-serif; font-size:15px; line-height:1.7;
  -webkit-font-smoothing:antialiased; padding:34px 20px 70px}
h1,h2,h3,h4{margin:0; font-family:'Space Grotesk',system-ui,sans-serif; font-weight:500;
  line-height:1.14; letter-spacing:-.022em; text-wrap:balance}
p{margin:0}
code{font-family:ui-monospace,SFMono-Regular,Menlo,monospace; font-size:.88em;
  background:var(--grey); padding:2px 6px; border-radius:2px}
:focus-visible{outline:2px solid var(--ink); outline-offset:3px}

/* ---------- strana ---------- */
.page{background:var(--page); color:var(--ink); max-width:1000px; margin:0 auto 26px;
  border-radius:3px; box-shadow:0 1px 2px rgba(16,18,22,.06), 0 22px 50px -30px rgba(16,18,22,.5);
  display:flex; flex-direction:column; overflow:hidden}
.page > .inner{padding:52px 56px 34px; flex:1}
.rule{height:5px; background:__SPEC__}
.eyebrow{font-size:11px; letter-spacing:.16em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.page h2{font-size:30px; margin:12px 0 0}
.lead{margin-top:16px; color:var(--ink-2); max-width:66ch; font-size:15.5px}
.pfoot{display:flex; align-items:center; padding:14px 56px 20px; border-top:1px solid var(--line);
  font-size:11px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3); font-weight:700}
.pfoot .n{margin-left:auto; font-variant-numeric:tabular-nums}

h3.sub{font-size:17px; margin:38px 0 10px}
.note{background:var(--grey); border-left:3px solid var(--ink); padding:16px 20px; margin-top:22px; border-radius:2px}
.note p{font-size:14.5px; color:var(--ink-2)}
.note strong{color:var(--ink)}

/* ---------- tabulky ---------- */
.tw{overflow-x:auto; margin-top:22px; border:1px solid var(--line); border-radius:2px}
table{border-collapse:collapse; width:100%; min-width:640px; font-size:13.5px}
th,td{padding:11px 14px; text-align:left; vertical-align:top; border-bottom:1px solid var(--line)}
thead th{font-size:10px; letter-spacing:.14em; text-transform:uppercase; color:var(--ink-3);
  font-weight:700; background:var(--grey)}
tbody tr:last-child td{border-bottom:0}
td small{display:block; color:var(--ink-3); font-size:11.5px; margin-top:2px}
.sw{display:inline-flex; align-items:center; gap:8px; font-weight:600; white-space:nowrap}
.sw i{width:14px; height:14px; border-radius:2px; display:block; border:1px solid rgba(16,18,22,.16)}

/* ---------- plochy ---------- */
.fields{display:grid; grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
  margin-top:24px; border-radius:2px; overflow:hidden}
.field{padding:24px 18px 22px; font-family:'Space Grotesk',sans-serif; font-size:16px;
  font-weight:500; letter-spacing:-.02em; line-height:1.3}
.field span{display:block; font-family:Manrope,sans-serif; font-size:10.5px; font-weight:700;
  letter-spacing:.13em; text-transform:uppercase; margin-top:7px; opacity:.75}

/* ---------- znak ---------- */
.mark{display:block; overflow:hidden; flex:none; container-type:inline-size}
.mark > i{display:block; width:245.15px; height:238.7px; clip-path:url(#waldorf-spiral); transform-origin:0 0}
.g-spec > i{background:__SPEC__}
.g-ms > i{background:__MS__}  .g-zs > i{background:__ZS__}
.g-zus > i{background:__ZUS__} .g-ss > i{background:__SS__}
.g-ink > i{background:#101216} .g-white > i{background:#FFFFFF}
.markrow{display:flex; align-items:flex-end; gap:26px; flex-wrap:wrap; margin-top:24px;
  padding:26px 22px; background:var(--grey); border-radius:2px}
.mcell{display:flex; flex-direction:column; align-items:center; gap:10px}
.mcell .c{font-size:10px; letter-spacing:.12em; text-transform:uppercase; color:var(--ink-3); font-weight:700}
.mcell.dark{background:var(--ink); padding:14px; border-radius:2px}
.mcell.dark .c{color:#8B8D94}

pre{background:var(--grey); padding:16px 18px; border-radius:2px; overflow-x:auto;
  font-size:12.5px; line-height:1.65; margin:18px 0 0;
  font-family:ui-monospace,SFMono-Regular,Menlo,monospace}

/* ---------- stavy ---------- */
.states{display:grid; gap:1px; background:var(--line); border:1px solid var(--line);
  border-radius:2px; margin-top:22px; grid-template-columns:repeat(auto-fit,minmax(230px,1fr))}
.state{background:var(--white); padding:18px 20px}
.state h4{font-size:13px; margin-bottom:8px}
.state p{font-size:13px; color:var(--ink-2); line-height:1.6}
.demo{margin-top:12px; font-size:14px}
.demo a{color:var(--zs-t); text-decoration:underline; text-decoration-thickness:1px; text-underline-offset:3px}
.demo a.hov{text-decoration-thickness:2px}
.demo .foc{outline:2px solid var(--ink); outline-offset:2px; border-radius:2px; padding:1px 2px}
.demo .act{border-bottom:2px solid var(--zs-t); padding-bottom:3px; font-weight:600}
.errbox{display:block; background:var(--err-bg); color:var(--ink); padding:11px 14px; border-radius:2px;
  font-size:13px; border-left:3px solid var(--err)}

/* ---------- obrázky ---------- */
.imgrules{display:grid; gap:1px; background:var(--line); border:1px solid var(--line);
  border-radius:2px; margin-top:22px; grid-template-columns:repeat(auto-fit,minmax(215px,1fr))}
.ir{background:var(--white); padding:18px 20px}
.ir h4{font-size:13px; margin-bottom:7px}
.ir p{font-size:13px; color:var(--ink-2); line-height:1.6}
.ir.no h4{color:var(--err)}
.prompts{margin-top:20px; border:1px solid var(--line); border-radius:2px; overflow:hidden}
.pr{padding:14px 18px; border-bottom:1px solid var(--line); display:grid;
  grid-template-columns:150px 1fr; gap:18px}
.pr:last-child{border-bottom:0}
.pr .k{font-size:11px; letter-spacing:.12em; text-transform:uppercase; font-weight:700; color:var(--ink-3)}
.pr .v{font-size:13px; color:var(--ink-2); line-height:1.6}

ul{margin:14px 0 0; padding-left:19px; font-size:14.5px; color:var(--ink-2); line-height:1.75}
li{margin-bottom:7px}
li strong{color:var(--ink)}
.chg{margin-top:20px; display:grid; gap:1px; background:var(--line); border:1px solid var(--line); border-radius:2px}
.chgrow{background:var(--white); padding:15px 20px; display:grid; grid-template-columns:66px 1fr; gap:18px}
.chgrow .s{font-size:10.5px; letter-spacing:.12em; text-transform:uppercase; font-weight:700; padding-top:2px}
.chgrow .s.m{color:var(--zus-t)} .chgrow .s.a{color:var(--zs-t)}
.chgrow p{font-size:13.5px; color:var(--ink-2); line-height:1.6}
.chgrow b{color:var(--ink)}

@media (max-width:720px){
  .page > .inner{padding:34px 24px 26px} .pfoot{padding:13px 24px 18px}
  .page h2{font-size:24px} .pr{grid-template-columns:1fr; gap:6px}
  body{padding:18px 12px 50px}
}
</style>

<svg width="0" height="0" style="position:absolute" aria-hidden="true" focusable="false">
  <clipPath id="waldorf-spiral" transform="translate(-174.43 -275.35)">__CLIP__</clipPath>
</svg>

<!-- ======================= 09 ======================= -->
<article class="page">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">09 · Web · příloha logomanuálu · design by WOLIP</p>
    <h2>Barvy: čtyři hodnoty na generaci</h2>
    <p class="lead">
      V tisku stačí na školu jedna barva. Na webu platí WCAG a jedna hodnota nemůže zároveň
      nést text i sloužit jako plocha. Kontrast totiž řídí jas, ne odstín: barva projde na
      běžný text poměrem 4,5:1 vůči bílé jen tehdy, má-li relativní jas nejvýš 0,183.
      Amber ZUŠ má 0,416. Proto má každá generace čtyři hodnoty místo jedné.
    </p>

    <div class="tw">
      <table>
        <thead><tr>
          <th>Generace</th><th>Světlá plocha</th><th>Sytá plocha</th>
          <th>Text na bílé</th><th>Jemný tint</th>
        </tr></thead>
        <tbody>
          <tr>
            <td><span class="sw"><i style="background:#C0509A"></i>Mateřská</span></td>
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
            <td><span class="sw"><i style="background:#4A3CB0"></i>Střední</span></td>
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
      <div class="field" style="background:#4A3CB0;color:#FFFFFF">Střední<br><span>bílá 8,19:1</span></div>
    </div>

    <h3 class="sub">Pravidla</h3>
    <ul>
      <li><strong>Světlá plocha nese vždy inkoust</strong>, sytá plocha vždy bílou. Nikdy naopak.</li>
      <li><strong>Text na bílé</strong> se používá na nadpisy, odkazy a čísla. Nikdy syté plochy jako text.</li>
      <li><strong>Jemný tint</strong> je pro bloky, tabulky a zvýrazněné odstavce. Text v nich je inkoust.</li>
      <li><strong>Amber #EE9B00 je nejlepší plocha v systému</strong> — inkoust na něm má 8,32:1,
        nejvíc ze všech čtyř. ZUŠ na tom má stavět, ne se tomu vyhýbat.</li>
      <li>Na jedné stránce platí barva jedné generace. Výjimkou je rozcestník skupiny, viz strana 12.</li>
    </ul>

    <div class="note">
      <p><strong>Jediná změna hodnoty oproti verzi 1.0.</strong> Mateřská <code>#C0509A</code> →
      <code>#BC4D96</code>. Původní hodnota má 4,33:1 vůči bílé i vůči inkoustu — přesný
      geometrický střed mezi nimi, takže neunese ani jeden. Posun má odchylku ΔE 0,011,
      tedy pouhým okem nerozeznatelnou. Ostatní tři barvy zůstávají beze změny.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">10</span></div>
</article>

<!-- ======================= 10 ======================= -->
<article class="page">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">10 · Web</p>
    <h2>Znak se nasazuje jako kód</h2>
    <p class="lead">
      Znak není obrázek, ale jedna ořezová cesta o 421 bajtech a barevný přechod. Všech sedm
      variant vzniká z téhož zdroje, je ostrých v jakékoli velikosti a mění se jedinou
      proměnnou. Dodané soubory měly 110–124 kB na variantu.
    </p>

    <div class="markrow">
      <div class="mcell"><span class="mark g-spec" style="width:104px;height:101.26px"><i style="transform:scale(.4242)"></i></span><span class="c">Spektrum</span></div>
      <div class="mcell"><span class="mark g-ms" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">Mateřská</span></div>
      <div class="mcell"><span class="mark g-zs" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">Základní</span></div>
      <div class="mcell"><span class="mark g-zus" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">ZUŠ</span></div>
      <div class="mcell"><span class="mark g-ss" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">Střední</span></div>
      <div class="mcell"><span class="mark g-ink" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">Jednobarevná</span></div>
      <div class="mcell dark"><span class="mark g-white" style="width:66px;height:64.26px"><i style="transform:scale(.2692)"></i></span><span class="c">Negativní</span></div>
    </div>

    <pre>&lt;!-- jednou kdekoli v &lt;body&gt;: obsah waldorf-mark-clip.svg --&gt;
&lt;link rel="stylesheet" href="waldorf-mark.css"&gt;

&lt;span class="wm wm--zs" style="--wm-size:44px"
      role="img" aria-label="Základní škola"&gt;&lt;/span&gt;</pre>

    <h3 class="sub">Minimální velikost hlídá kód</h3>
    <p class="lead">
      Pod 44 px se barevné varianty samy přepnou na jednobarevnou — spektrum by se v téhle
      velikosti slilo do skvrny. Zapíše se tedy vždy jen varianta a velikost, o zbytek se
      stará CSS. Negativní verze se nepřepisuje, ta na tmavé ploše platí v každé velikosti.
    </p>
    <div class="markrow">
      <div class="mcell"><span class="mark g-spec" style="width:20px;height:19.47px"><i style="transform:scale(.0816)"></i></span><span class="c">20 px</span></div>
      <div class="mcell"><span class="mark g-spec" style="width:32px;height:31.16px"><i style="transform:scale(.1305)"></i></span><span class="c">32 px</span></div>
      <div class="mcell"><span class="mark g-spec" style="width:44px;height:42.84px"><i style="transform:scale(.1795)"></i></span><span class="c">44 px</span></div>
      <div class="mcell"><span class="mark g-spec" style="width:72px;height:70.11px"><i style="transform:scale(.2937)"></i></span><span class="c">72 px</span></div>
    </div>

    <h3 class="sub">Soubory</h3>
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
      mírně překrývají — bez překryvu vznikají antialiasové spáry, které se projeví jako
      paprsky. Dodané soubory s 999 výsečemi je mají.</p>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">11</span></div>
</article>

<!-- ======================= 11 ======================= -->
<article class="page">
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
        které patří. Jediný neutrál na webu je bílá.</li>
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
        <p class="demo"><a href="#odkaz">termíny zápisu</a></p>
      </div>
      <div class="state">
        <h4>Pod kurzorem</h4>
        <p>Podtržení zesílí na 2 px. Barva se nemění — ztmavení by rozbilo kontrast.</p>
        <p class="demo"><a href="#odkaz" class="hov">termíny zápisu</a></p>
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
      <p><strong>Proč chybová červená a ne zelená pro úspěch.</strong> Červená
      <code>#B2261E</code> je od mateřské vzdálená 46° a od ZUŠ 43°, takže se s žádnou barvou
      generace neplete. Zelená by se ale s barvou základní školy pletla vždy — proto se
      úspěch značí inkoustem a ikonou, ne barvou.</p>
    </div>

    <h3 class="sub">Obrázky</h3>
    <div class="imgrules">
      <div class="ir">
        <h4>Cíl: skutečná škola</h4>
        <p>Dokumentární fotografie ze školy: ruce při práci, sešity, dílna, zahrada,
          jeviště, zkušebna. Nedokonalé světlo je součástí stylu.</p>
      </div>
      <div class="ir no">
        <h4>Nikdy fotobanka</h4>
        <p>Usmívající se modelové v bílém studiu popírají všechno, co škola o sobě říká.</p>
      </div>
      <div class="ir no">
        <h4>Nikdy vymyšlené děti</h4>
        <p>Umělá fotografie dítěte vydávaná za žáka školy je tvrzení o skutečnosti,
          které neplatí. To platí i pro dočasné použití.</p>
      </div>
      <div class="ir">
        <h4>Dočasně: materiál, ne lidé</h4>
        <p>Než budou vlastní fotky, používají se generované snímky <strong>materiálů
          a detailů</strong> — bez rozpoznatelných tváří.</p>
      </div>
    </div>

    <p class="lead" style="margin-top:22px">
      Generovaný obrázek je stavební lešení, ne fasáda. Proto platí: žádné tváře, žádný
      záběr, který tvrdí „tohle je naše třída“, každý takový soubor má v názvu předponu
      <code>tmp-</code> a v redakčním systému štítek <em>dočasné</em>, aby šlo kdykoli
      vypsat, co ještě čeká na výměnu.
    </p>

    <div class="prompts">
      <div class="pr"><span class="k">Materiál</span><span class="v">Detail ručního papíru s vlákny, akvarelová skvrna v barvě generace, měkké denní světlo z boku, bez lidí.</span></div>
      <div class="pr"><span class="k">Dílna</span><span class="v">Hoblina, dláto a kus lipového dřeva na ponku, shora, přirozené světlo, bez rukou a tváří.</span></div>
      <div class="pr"><span class="k">Hudba</span><span class="v">Housle a notový sešit na dřevěné židli v prázdné zkušebně, ranní světlo, bez lidí.</span></div>
      <div class="pr"><span class="k">Zahrada</span><span class="v">Konev, hlína a sazenice na dřevěném stole, zataženo, bez lidí.</span></div>
      <div class="pr"><span class="k">Formát</span><span class="v">3:2 na šířku pro pásky, 4:5 na výšku pro karty. Bez textu, bez log, bez ostrého protisvětla.</span></div>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">12</span></div>
</article>

<!-- ======================= 12 ======================= -->
<article class="page">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">12 · Web</p>
    <h2>Čtyři generace na jedné stránce</h2>
    <p class="lead">
      Manuál říká: nikdy dvě barevné verze na jedné stránce. V tisku to platí — přihláška
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
      <li>Plné spektrum znamená celý waldorfský koncept. Podbarva znamená jednu etapu cesty.
        Barva na stránce říká, ke které generaci se právě mluví.</li>
    </ul>

    <h3 class="sub">Shrnutí změn oproti verzi 1.0</h3>
    <div class="chg">
      <div class="chgrow"><span class="s m">Mění</span><p><b>Mateřská #C0509A → #BC4D96.</b> Jediná změněná hodnota v celém manuálu.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Čtyři tokeny na generaci</b> místo jedné hodnoty — strana 10.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pod 44 px jen jednobarevný znak.</b> Strana 6 uvádí 20 px; ve spektrální verzi se tam spirála slévá.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Znak jako kód</b> a soubory pro tisk a e-mail — strana 11.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Stavy prvků</b> a chybová červená #B2261E — strana 12.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Plochy nesou barvu</b>, neutrál je jen bílá. Tmavý režim se nedělá.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pravidla pro obrázky</b> včetně dočasného režimu bez vlastních fotek.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Výjimka pro rozcestník skupiny</b> — tato strana.</p></div>
      <div class="chgrow"><span class="s m">Mění</span><p><b>Jednobarevný znak sjednocen na #101216.</b> Dodaný soubor měl #161E90, strana 3 uvádí inkoust. Platí manuál.</p></div>
    </div>

    <div class="note">
      <p><strong>Beze změny zůstává.</strong> Tvar znaku a všech sedm variant. Space Grotesk
      a Manrope. Barvy základní školy, ZUŠ Fantazie a střední školy. Ochranná zóna, umístění
      na dokumentu a zakázané varianty ze stran 4 a 5. Logika, podle níž plné spektrum patří
      celku a podbarva jedné škole.</p>
    </div>

    <p class="lead" style="margin-top:26px; font-size:13px; color:var(--ink-3)">
      Kontrastní poměry měřené podle WCAG 2.1 proti bílé, případně proti inkoustu #101216.
      Navrhované hodnoty jsou dopočítané v OKLCH jako nejbližší vyhovující barva k původní,
      ne odhadem. Kontakt: Tomkova 420/48, Hejčín, 779 00 Olomouc,
      waldorf@waldorf-olomouc.cz, +420 777 850 488.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál · Waldorfská škola Olomouc · design by WOLIP</span><span class="n">13</span></div>
</article>
