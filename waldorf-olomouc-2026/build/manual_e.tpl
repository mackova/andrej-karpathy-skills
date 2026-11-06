<!-- ==================== 15 RYTMUS, NE EFEKT ==================== -->
<article class="page" id="k15">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">15 · Pohyb</p>
    <h2>Rytmus, ne efekt</h2>

    <p class="eyebrow">13 · Pohyb</p>
    <h2>Rytmus, ne efekt</h2>
    <p class="lead">
      Waldorfská pedagogika stojí na rytmu a opakování — na tom, že se den, týden a rok vracejí
      v poznatelném pořádku. Pohyb na webu má dělat totéž: být klidný, předvídatelný a tak
      nenápadný, že si ho nikdo nevšimne. Nic nepřeskakuje, nic nepruží, nic nepoutá pozornost
      samo na sebe.
    </p>
<h3 class="sub">Znak se neotáčí ani v pohybu</h3>
    <p class="lead">
      <a class="kap" href="#k04">Kapitola 04 · Zakázané varianty</a> zakazuje otáčení znaku a v pohybu to platí beze změny. Hýbe se
      <strong>barva uvnitř spirály</strong>, ne spirála sama: animuje se úhel kuželového
      přechodu, tvar zůstává přesně tam, kde je. Tok běží jen tam, kde je znak velký —
      na obálce, v úvodu stránky — a nikdy v hlavičce ani v patičce.
    </p>
    <div class="stage flowrow">
      <div class="scell"><span class="mark g-flow" style="width:84px;height:81.79px"><i style="transform:scale(.3427)"></i></span><span class="c">Tok barvy — správně</span></div>
      <div class="scell"><span class="mark g-spec" style="width:84px;height:81.79px"><i style="transform:scale(.3427)"></i></span><span class="c">V klidu</span></div>
      <div class="scell zakaz"><span class="mark g-spec" style="width:84px;height:81.79px"><i style="transform:scale(.3427)"></i></span><span class="c">Otáčení tvaru — zakázáno</span></div>
    </div>
<h3 class="sub">Cesta generací</h3>
    <p class="lead">
      Barva na stránce říká, ke které generaci se právě mluví. Když návštěvník přechází mezi
      sekcemi, mění se plocha pod ním — pomalu, jedním prolnutím, nikdy posunem ani otočením.
      Znak na světlé ploše zůstává inkoustový podle <a class="kap" href="#k09">kapitoly 09 · Barvy pro obrazovku</a>; vlastní barevná varianta
      by se na ploše téže barvy ztratila.
    </p>
    <div class="journey">
      <div class="jstage">
        <div class="jslide j1">
          <div class="jfield" style="background:#D684B7"></div>
          <div class="jrow">
            <span class="mark g-ink" style="width:62px;height:60.37px"><i style="transform:scale(.2529)"></i></span>
            <div><b>Mateřská škola</b><i>Nejmladší generace · #D684B7</i></div>
          </div>
        </div>
        <div class="jslide j2">
          <div class="jfield" style="background:#72AB84"></div>
          <div class="jrow">
            <span class="mark g-ink" style="width:62px;height:60.37px"><i style="transform:scale(.2529)"></i></span>
            <div><b>Základní škola</b><i>Devět let, jedna třída · #72AB84</i></div>
          </div>
        </div>
        <div class="jslide j3">
          <div class="jfield" style="background:#EE9B00"></div>
          <div class="jrow">
            <span class="mark g-ink" style="width:62px;height:60.37px"><i style="transform:scale(.2529)"></i></span>
            <div><b>ZUŠ Fantazie</b><i>Napříč generacemi · #EE9B00</i></div>
          </div>
        </div>
        <div class="jslide j4">
          <div class="jfield" style="background:#9699D9"></div>
          <div class="jrow">
            <span class="mark g-ink" style="width:62px;height:60.37px"><i style="transform:scale(.2529)"></i></span>
            <div><b>Střední škola · lyceum</b><i>Výroční práce · #9699D9</i></div>
          </div>
        </div>
      </div>
      <div class="jbar">
        <i style="background:#BC4D96"></i><i style="background:#3F905D"></i>
        <i style="background:#EE9B00"></i><i style="background:#4A3CB0"></i>
      </div>
    </div>
    <p class="lead" style="font-size:13px; color:var(--ink-3); margin-top:12px">
      Všechny čtyři plochy jsou světlé a nesou inkoustový text podle <a class="kap" href="#k09">kapitoly 09 · Barvy pro obrazovku</a>. Prolnutí trvá
      jeden krok <code>--pohyb-sekce</code>, mezi přechody je klid.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál Waldorf Olomouc · design by WOLIP</span><span class="n">Kapitola 15 · Rytmus, ne efekt</span></div>
</article>

<!-- ==================== 16 ČASY A KŘIVKY ==================== -->
<article class="page" id="k16">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">16 · Pohyb</p>
    <h2>Časy a křivky</h2>

    <p class="eyebrow">14 · Pohyb</p>
    <h2>Časy, křivky a živé ukázky</h2>
    <p class="lead">
      Čtyři délky a dvě křivky stačí na celý web. Čím větší plocha se hýbe, tím déle to trvá;
      všechno zpomaluje do klidu a nic nepřestřelí za cíl.
    </p>
    <div class="tw">
      <table>
        <thead><tr><th>Token</th><th>Hodnota</th><th>Kde se používá</th></tr></thead>
        <tbody>
          <tr><td><code>--pohyb-stav</code></td><td>160 ms</td><td>Podtržení odkazu, zaměření, tlačítko pod kurzorem.</td></tr>
          <tr><td><code>--pohyb-prvek</code></td><td>320 ms</td><td>Objevení prvku, přechod barvy, posun linky v menu.</td></tr>
          <tr><td><code>--pohyb-sekce</code></td><td>640 ms</td><td>Příchod sekce při scrollu, prolnutí generace.</td></tr>
          <tr><td><code>--pohyb-znak</code></td><td>1200 ms</td><td>Úvodní tok barvy ve znaku. Jen jednou, při načtení.</td></tr>
          <tr><td><code>--krivka-klid</code></td><td>cubic-bezier(.2,.7,.3,1)</td><td>Výchozí křivka. Rychlý začátek, klidný dojezd.</td></tr>
          <tr><td><code>--krivka-vstup</code></td><td>cubic-bezier(.16,1,.3,1)</td><td>Příchod zdaleka — sekce, prvky v řadě.</td></tr>
          <tr><td><code>--prodleva</code></td><td>60 ms</td><td>Odstup mezi sourozenci. Nejvýš šest prvků, pak najednou.</td></tr>
        </tbody>
      </table>
    </div>
  </div>
  <div class="pfoot"><span>Logomanuál Waldorf Olomouc · design by WOLIP</span><span class="n">Kapitola 16 · Časy a křivky</span></div>
</article>

<!-- ==================== 17 ŽIVÉ UKÁZKY ==================== -->
<article class="page" id="k17">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">17 · Pohyb</p>
    <h2>Živé ukázky</h2>
    <p class="lead">
      Ukázky níže jsou funkční, ne obrázky — běží na tokenech z <a class="kap" href="#k16">kapitoly 16 · Časy a křivky</a>.
    </p>

    <div class="specimens">
      <div class="sp">
        <h4>Příchod sekce</h4>
        <p>Prvky přijdou zdola po 60 ms. Nejvýš šest, zbytek najednou.</p>
        <div class="plocha"><div class="stagger" style="width:100%"><span></span><span></span><span></span><span></span></div></div>
        <button class="replay" data-replay=".stagger">Přehrát</button>
      </div>
      <div class="sp">
        <h4>Odkaz pod kurzorem</h4>
        <p>Podtržení zesílí z 1 na 2 px za 160 ms. Barva se nemění.</p>
        <div class="plocha"><p class="demo" style="margin:0"><a href="#k17">termíny zápisu</a></p></div>
      </div>
      <div class="sp">
        <h4>Aktivní položka menu</h4>
        <p>Linka klouže k nové položce, neproblikává. 320 ms.</p>
        <div class="plocha"><div class="menu" style="width:100%">
          <button aria-current="true">Školka</button><button>Základní</button><button>ZUŠ</button>
          <span class="ind"></span></div></div>
      </div>
      <div class="sp">
        <h4>Chybová hláška</h4>
        <p>Objeví se a posune o 10 px. Netřese se — chyba není trest.</p>
        <div class="plocha errdemo" style="display:block"><span class="errbox">Vyplňte prosím datum narození dítěte.</span></div>
        <button class="replay" data-replay=".errdemo">Přehrát</button>
      </div>
      <div class="sp">
        <h4>Načítání</h4>
        <p>Pruh v barvě generace. Pokud je známý postup, nikdy nekonečná smyčka.</p>
        <div class="plocha"><div class="nacitani" style="width:100%"><i></i></div></div>
        <button class="replay" data-replay=".nacitani">Přehrát</button>
      </div>
      <div class="sp">
        <h4>Zaměření z klávesnice</h4>
        <p>Obrys se objeví okamžitě, bez prodlevy. Projděte stránku tabulátorem.</p>
        <div class="plocha"><p class="demo" style="margin:0"><a href="#k17">zkuste klávesu Tab</a></p></div>
      </div>
    </div>
<h3 class="sub">Co se hýbe a co ne</h3>
    <div class="zone">
      <div class="note" style="margin-top:0">
        <p><strong>Hýbe se.</strong> Příchod sekce při scrollu. Podtržení odkazu a linka
        v menu. Prolnutí mezi generacemi. Objevení hlášky. Tok barvy ve znaku na obálce
        a v úvodu stránky.</p>
      </div>
      <div class="note" style="margin-top:0; border-left-color:var(--err)">
        <p><strong>Nehýbe se.</strong> Znak — neotáčí se, nepulzuje, nedeformuje se. Fotografie —
        žádný parallax. Nic nepruží ani nepřestřelí za cíl. Nic neběží ve smyčce donekonečna
        kromě toku barvy ve velkém znaku. Žádné automatické přehrávání videa.</p>
      </div>
    </div>
<h3 class="sub">Vypnutý pohyb</h3>
    <p class="lead">
      Kdo má v systému zapnuté omezení pohybu, nevidí nic z výše uvedeného — a nepřijde
      o žádnou informaci. Žádné sdělení nesmí být neseno jen pohybem. Vyzkoušejte si to
      rovnou tady: přepínač vypne pohyb v celém dokumentu.
    </p>
    <label class="switch">
      <input type="checkbox" id="pohyb-off">
      <span>Vypnout pohyb v tomto dokumentu</span>
    </label>

    <p class="lead" style="margin-top:26px; font-size:12.5px; color:var(--ink-3)">
      Ukázky na této straně jsou funkční, ne obrázky — běží na stejných tokenech, které
      má převzít web. Tok barvy ve znaku se animuje přes registrovanou vlastnost
      <code>--wm-uhel</code>; ořezová cesta zůstává nedotčená, proto se tvar nikdy nehýbe.
    </p>
  </div>
  <div class="pfoot"><span>Logomanuál Waldorf Olomouc · design by WOLIP</span><span class="n">Kapitola 17 · Živé ukázky</span></div>
</article>
