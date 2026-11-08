
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
