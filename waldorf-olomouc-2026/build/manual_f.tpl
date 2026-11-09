
  </div><!-- /ct-telo -->
</div><!-- /ctecka -->

<script>
(function () {
  var root = document.documentElement;
  root.setAttribute('data-js', '');

  var klid = window.matchMedia('(prefers-reduced-motion: reduce)');
  function bezPohybu() {
    return klid.matches || root.getAttribute('data-pohyb') === 'vypnuto';
  }

  var ctecka = document.getElementById('ctecka');
  var telo   = document.getElementById('ct-telo');
  var kde    = document.getElementById('ct-kde');
  var zpet   = document.getElementById('ct-zpet');
  var prev   = document.getElementById('ct-prev');
  var next   = document.getElementById('ct-next');
  var strany = [].slice.call(telo.querySelectorAll('.page'));
  var poradi = strany.map(function (el) { return el.id; });

  // linka v menu se měří až když je kapitola vidět
  function srovnejMenu(kde2, animovat) {
    kde2.querySelectorAll('.menu').forEach(function (menu) {
      var ind = menu.querySelector('.ind');
      var btn = menu.querySelector('[aria-current="true"]') || menu.querySelector('button');
      if (!ind || !btn) return;
      if (!animovat) ind.style.transition = 'none';
      ind.style.width = btn.offsetWidth + 'px';
      ind.style.transform = 'translateX(' + btn.offsetLeft + 'px)';
      if (!animovat) { void ind.offsetWidth; ind.style.transition = ''; }
    });
  }

  function otevri(id) {
    var cil = document.getElementById(id);
    if (!cil || cil.parentElement !== telo) return false;
    strany.forEach(function (el) { el.classList.remove('je'); });
    cil.classList.add('je', 'in');
    ctecka.hidden = false;
    document.body.style.overflow = 'hidden';
    var e = cil.querySelector('.eyebrow'), h = cil.querySelector('h2');
    kde.textContent = (e ? e.textContent + ' · ' : '') + (h ? h.textContent : '');
    var i = poradi.indexOf(id);
    prev.disabled = i <= 0;
    next.disabled = i >= poradi.length - 1;
    telo.scrollTop = 0;
    srovnejMenu(cil, false);
    zpet.focus({ preventScroll: true });
    return true;
  }

  function zavri() {
    ctecka.hidden = true;
    document.body.style.overflow = '';
  }

  function zhashe() {
    var id = decodeURIComponent(location.hash.replace('#', ''));
    if (id && otevri(id)) return;
    zavri();
  }

  function jdi(id) { location.hash = id ? '#' + id : ''; }

  window.addEventListener('hashchange', zhashe);
  zpet.addEventListener('click', function () { jdi(''); });
  prev.addEventListener('click', function () {
    var i = poradi.indexOf(aktivni()); if (i > 0) jdi(poradi[i - 1]);
  });
  next.addEventListener('click', function () {
    var i = poradi.indexOf(aktivni()); if (i > -1 && i < poradi.length - 1) jdi(poradi[i + 1]);
  });
  function aktivni() {
    var el = telo.querySelector('.page.je');
    return el ? el.id : '';
  }
  document.addEventListener('keydown', function (ev) {
    if (ctecka.hidden) return;
    if (ev.key === 'Escape') { jdi(''); }
    else if (ev.key === 'ArrowLeft' && !prev.disabled) { prev.click(); }
    else if (ev.key === 'ArrowRight' && !next.disabled) { next.click(); }
  });
  zhashe();

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
    var tlacitka = menu.querySelectorAll('button');
    tlacitka.forEach(function (btn) {
      btn.addEventListener('click', function () {
        tlacitka.forEach(function (b) { b.removeAttribute('aria-current'); });
        btn.setAttribute('aria-current', 'true');
        srovnejMenu(menu.closest('.page') || menu, !bezPohybu());
      });
    });
  });
  window.addEventListener('resize', function () {
    var el = telo.querySelector('.page.je');
    if (el) srovnejMenu(el, false);
  });

  // přepínač pohybu
  var prepinac = document.getElementById('pohyb-off');
  if (prepinac) {
    prepinac.checked = root.getAttribute('data-pohyb') === 'vypnuto';
    prepinac.addEventListener('change', function () {
      if (prepinac.checked) root.setAttribute('data-pohyb', 'vypnuto');
      else root.removeAttribute('data-pohyb');
    });
  }
})();
</script>
