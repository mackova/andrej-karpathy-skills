
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
