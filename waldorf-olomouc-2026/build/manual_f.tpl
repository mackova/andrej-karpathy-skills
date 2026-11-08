
<!-- ==================== 18 ZMĚNY ==================== -->
<article class="page" id="k18">
  <div class="rule"></div>
  <div class="inner">
    <p class="eyebrow">18 · Závěr</p>
    <h2>Změny oproti verzi 1.0</h2>
    <p class="lead">Tvar znaku, obě písma i logika generací zůstávají. Mění se dvě barevné hodnoty, jedna se ruší.</p>

    <div class="chg">
      <div class="chgrow"><span class="s m">Mění</span><p><b>Mateřská #C0509A → #BC4D96.</b> Jediná změněná barevná hodnota. Strana 6.</p></div>
      <div class="chgrow"><span class="s m">Mění</span><p><b>Jednobarevný znak sjednocen na #101216.</b> Dodaný soubor měl #161E90, <a class="kap" href="#k03">kapitola 03 · Varianty</a> uvádí inkoust. Platí manuál.</p></div>
      <div class="chgrow"><span class="s r">Ruší</span><p><b>Šedá plocha #F5F5F7.</b> Plochy nesou barvu generace, neutrál je jen bílá. Nahrazují ji jemné tinty z <a class="kap" href="#k09">kapitoly 09 · Barvy pro obrazovku</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Čtyři tokeny na generaci</b> místo jedné hodnoty — <a class="kap" href="#k09">kapitola 09 · Barvy pro obrazovku</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pod 44 px jen jednobarevný znak</b> na obrazovce — <a class="kap" href="#k10">kapitola 10 · Znak v kódu</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Znak jako kód</b> a soubory pro tisk a e-mail — <a class="kap" href="#k10">kapitola 10 · Znak v kódu</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Stavy prvků</b> a chybová červená #B2261E — <a class="kap" href="#k12">kapitola 12 · Stavy prvků</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Pravidla pro obrázky</b> včetně dočasného režimu bez vlastních fotek — <a class="kap" href="#k13">kapitola 13 · Obrázky</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Výjimka pro rozcestník skupiny</b> — tato strana.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Rozhodnutí nedělat tmavý režim</b> — <a class="kap" href="#k11">kapitola 11 · Plochy</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Růst znaku generacemi.</b> Barva uvnitř spirály projde cestou dítěte školou a otevře se do spektra. Tvar se ani tady neotáčí — <a class="kap" href="#k15">kapitola 15</a>.</p></div>
      <div class="chgrow"><span class="s m">Mění</span><p><b>Textové tokeny mají rezervu.</b> #B54790, #337F4C a #A56001 projdou 4,5:1 i na nebílém podkladu. Dřívější hodnoty byly přesně na hranici a pod tintem selhávaly.</p></div>
      <div class="chgrow"><span class="s m">Mění</span><p><b>Tlumená šedá #8B8D94 → #6D707E.</b> Původní měla na bílé jen 3,31:1, přitom nese všechna návěstí a popisky.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Ukázky použití barev</b> na dopisním papíře, dokumentech, prezentaci, plakátech a sociálních sítích — <a class="kap" href="#k08">kapitola 08 · Aplikace</a>.</p></div>
      <div class="chgrow"><span class="s a">Doplňuje</span><p><b>Kapitolu o pohybu</b> — tokeny časů a křivek, živé ukázky, pravidlo, že se znak neotáčí ani v pohybu. Strany 14 a 15.</p></div>
    </div>
    <div class="note">
      <p><strong>Beze změny.</strong> Znak a jeho sedm variant, Space Grotesk a Manrope, barvy základní školy, ZUŠ a střední, ochranná zóna i zakázané varianty.</p>
    </div>
    <p class="lead">Kontrast měřen podle WCAG 2.1, barvy dopočítané v OKLCH. CMYK je orientační — před tiskem ověřte v tiskárně.</p>
  </div>
  <div class="pfoot"><span>Logomanuál Waldorf Olomouc · design by WOLIP</span><span class="n">Kapitola 18 · Změny</span></div>
</article>

  </div><!-- /obsah -->
</div><!-- /layout -->

<script>
(function () {
  var root = document.documentElement;
  root.setAttribute('data-js', '');

  var klid = window.matchMedia('(prefers-reduced-motion: reduce)');
  function bezPohybu() {
    return klid.matches || root.getAttribute('data-pohyb') === 'vypnuto';
  }

  // příchod stran
  var strany = document.querySelectorAll('.page');
  if (!('IntersectionObserver' in window)) {
    strany.forEach(function (el) { el.classList.add('in'); });
  } else {
    var io = new IntersectionObserver(function (zaznamy) {
      zaznamy.forEach(function (z) {
        if (z.isIntersecting) { z.target.classList.add('in'); io.unobserve(z.target); }
      });
    }, { rootMargin: '0px 0px -5% 0px', threshold: 0.03 });
    strany.forEach(function (el) { io.observe(el); });
  }

  // tlačítka Přehrát
  document.querySelectorAll('.replay').forEach(function (btn) {
    btn.addEventListener('click', function () {
      var cil = btn.parentElement.querySelector(btn.dataset.replay);
      if (!cil) return;
      cil.classList.remove('go');
      void cil.offsetWidth;          // vynutí restart animace
      cil.classList.add('go');
    });
  });

  // linka v menu
  document.querySelectorAll('.menu').forEach(function (menu) {
    var ind = menu.querySelector('.ind');
    var tlacitka = menu.querySelectorAll('button');
    function posun(btn, animovat) {
      if (!animovat) ind.style.transition = 'none';
      ind.style.width = btn.offsetWidth + 'px';
      ind.style.transform = 'translateX(' + btn.offsetLeft + 'px)';
      if (!animovat) { void ind.offsetWidth; ind.style.transition = ''; }
    }
    tlacitka.forEach(function (btn) {
      btn.addEventListener('click', function () {
        tlacitka.forEach(function (b) { b.removeAttribute('aria-current'); });
        btn.setAttribute('aria-current', 'true');
        posun(btn, !bezPohybu());
      });
    });
    posun(menu.querySelector('[aria-current="true"]') || tlacitka[0], false);
    window.addEventListener('resize', function () {
      posun(menu.querySelector('[aria-current="true"]') || tlacitka[0], false);
    });
  });

  // navigace: zvýraznění kapitoly, ve které čtenář je
  var odkazy = [].slice.call(document.querySelectorAll('.nav a[href^="#"]'));
  var cile = odkazy.map(function (a) { return document.querySelector(a.getAttribute('href')); });
  var ceka = false;
  function oznacit() {
    ceka = false;
    var aktivni = -1;
    for (var i = 0; i < cile.length; i++) {
      if (cile[i] && cile[i].getBoundingClientRect().top <= 140) aktivni = i;
    }
    odkazy.forEach(function (a, i) {
      if (i === aktivni) a.setAttribute('aria-current', 'true');
      else a.removeAttribute('aria-current');
    });
  }
  function naplanovat() { if (!ceka) { ceka = true; requestAnimationFrame(oznacit); } }
  window.addEventListener('scroll', naplanovat, { passive: true });
  window.addEventListener('resize', naplanovat);
  oznacit();

  // navigace na úzké obrazovce
  var nav = document.querySelector('.nav');
  var tog = document.querySelector('.nav-tog');
  if (tog) {
    tog.addEventListener('click', function () {
      var otevreno = nav.hasAttribute('data-otevreno');
      if (otevreno) nav.removeAttribute('data-otevreno'); else nav.setAttribute('data-otevreno', '');
      tog.setAttribute('aria-expanded', String(!otevreno));
    });
    nav.querySelectorAll('.nav-seznam a').forEach(function (a) {
      a.addEventListener('click', function () {
        if (window.innerWidth < 1000) { nav.removeAttribute('data-otevreno'); tog.setAttribute('aria-expanded','false'); }
      });
    });
  }

  // přepínač pohybu
  var prepinac = document.getElementById('pohyb-off');
  if (prepinac) {
    prepinac.checked = root.getAttribute('data-pohyb') === 'vypnuto';
    prepinac.addEventListener('change', function () {
      if (prepinac.checked) root.setAttribute('data-pohyb', 'vypnuto');
      else root.removeAttribute('data-pohyb');
      strany.forEach(function (el) { el.classList.add('in'); });
    });
  }
})();
</script>
