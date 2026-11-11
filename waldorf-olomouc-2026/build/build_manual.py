# -*- coding: utf-8 -*-
import math
CLIP = open('clip.txt').read().strip()
SPEC = open('spectrum.css').read().strip()

def school(hue, sat, hamp, lc, lamp):
    stops=[]
    for i in range(17):
        a=i*360/16; t=math.radians(a)
        h=hue - hamp*math.sin(t + math.pi)
        l=lc + lamp*math.cos(t)
        stops.append(f"hsl({h:.1f} {sat}% {l:.1f}%) {a:.0f}deg")
    return "conic-gradient(from 0deg at 50% 50%, " + ", ".join(stops) + ")"

vals = {
 '__MS__':  school(320.3, 62, 16, 43,   19),
 '__ZS__':  school(142.2, 62, 16, 43,   19),
 '__SS__':  school(247.2, 62, 16, 43,   19),
 '__ZUS__': school(35.0,  92, 13, 52.5, 9.5),
 '__CLIP__': CLIP, '__SPEC__': SPEC,
 '__SPECLIN__': None,   # dopočítá se níž, až je k dispozici color.py
 '__SPECFLOW__': SPEC.replace('from 0deg', 'from var(--wm-uhel)', 1),
}
H = open('manual.tpl',encoding='utf-8').read()

# ---- barvy kapitol: spektrum znaku rozložené do rozcestníku ----
# Školní kapitoly nesou přesnou barvu své školy, zbytek projde spektrem.
# Lehkost L a sytost C drží na úrovni značky, text se volí podle kontrastu.
import re as _re, html as _html, color as _C

_INK = _C.hex2rgb('#101216')

def _max_chroma(L, H, hi=0.37):
    lo = 0.0
    for _ in range(40):
        m = (lo + hi) / 2
        if _C.in_gamut(_C.from_oklch(L, m, H)): lo = m
        else: hi = m
    return lo

def _text_na(hexa):
    """Vrátí barvu textu, která na dané ploše projde 4,5:1 (kapitola 09)."""
    rgb = _C.hex2rgb(hexa)
    na_ink = _C.contrast(rgb, _INK)
    na_bile = _C.contrast(rgb, (1, 1, 1))
    if na_ink >= 4.5 and na_ink >= na_bile: return '#101216', 'g-ink', na_ink
    if na_bile >= 4.5: return '#FFFFFF', 'g-white', na_bile
    raise SystemExit(f'CHYBA: na ploše {hexa} neprojde ani inkoust ({na_ink:.2f}) ani bílá ({na_bile:.2f})')

# vodorovné spektrum pro pruh v hlavičce rozcestníku
_stopy = []
for _i in range(25):
    _h = (25 + _i * 360 / 24) % 360
    _c = _C.from_oklch(0.64, min(_max_chroma(0.64, _h), 0.17), _h)
    _stopy.append(_C.rgb2hex(tuple(min(1, max(0, _x)) for _x in _c)))
vals['__SPECLIN__'] = 'linear-gradient(90deg, ' + ', '.join(_stopy) + ')'

_SKOLY = {'k20': '#BC4D96', 'k21': '#3F905D', 'k22': '#EE9B00', 'k23': '#4A3CB0'}
_DILY = {'Značka': 'A', 'Web': 'B', 'Pohyb': 'C', 'Identita': 'D', 'Školy': 'E'}

def _cista(x):
    return _re.sub(r'\s+', ' ', _html.unescape(_re.sub(r'<[^>]+>', '', x))).strip()

def _upoutavka(telo):
    m = _re.search(r'<p class="lead">(.*?)</p>', telo, _re.S)
    if not m: return ''
    t = _cista(m.group(1))
    v = _re.split(r'(?<=[.!?]) ', t)[0]
    if len(v) > 95: v = v.split(';')[0]
    if len(v) > 95: v = v[:92].rsplit(' ', 1)[0] + '…'
    return v

_clanky = _re.findall(r'<article class="page[^"]*" id="(k\d+|prehled)">(.*?)</article>', H, _re.S)
assert len(_clanky) == 24, f'čekám 24 kapitol, mám {len(_clanky)}'

_obecne = [_id for _id, _ in _clanky if _id not in _SKOLY]
_barva = {}
for _n, _id in enumerate(_obecne):
    _H = (25 + _n * 360 / len(_obecne)) % 360
    _L = 0.64
    _rgb = _C.from_oklch(_L, min(_max_chroma(_L, _H), 0.17), _H)
    _barva[_id] = _C.rgb2hex(tuple(min(1, max(0, _x)) for _x in _rgb))
_barva.update(_SKOLY)

_skupiny = []
for _id, _telo in _clanky:
    _eb = _cista(_re.search(r'<p class="eyebrow">(.*?)</p>', _telo, _re.S).group(1))
    _h2 = _cista(_re.search(r'<h2>(.*?)</h2>', _telo, _re.S).group(1))
    _cast = _eb.split(' · ')
    _cislo, _skup = (_cast[0], _cast[1]) if len(_cast) == 2 else ('—', _eb)
    _dil = _DILY.get(_skup)
    _nadpis = f'{_dil} · {_skup}' if _dil else _skup
    if not _skupiny or _skupiny[-1][0] != _nadpis:
        _skupiny.append((_nadpis, []))
    _b = _barva[_id]
    _txt, _znakova, _ = _text_na(_b)
    _znak = (f'<span class="mark {_znakova}" style="width:34px;height:33.11px" aria-hidden="true">'
             f'<i style="transform:scale(.13869)"></i></span>') if _id in _SKOLY else ''
    _skupiny[-1][1].append(
        f'      <a class="dl" href="#{_id}" style="--kap:{_b}; --kap-text:{_txt}">\n'
        f'        <span class="hlava"><span class="c">{_cislo}</span>{_znak}</span>\n'
        f'        <span class="telo">\n'
        f'          <span class="t">{_h2}</span>\n'
        f'          <span class="p">{_upoutavka(_telo)}</span>\n'
        f'        </span>\n'
        f'      </a>')
_ven = []
for _nadpis, _dl in _skupiny:
    _ven.append(f'  <section class="skupina">\n    <p class="sl">{_nadpis}</p>\n'
                f'    <div class="dlazdice">\n' + '\n'.join(_dl) + '\n    </div>\n  </section>')
vals['__DLAZDICE__'] = '\n'.join(_ven)

# barva kapitoly se promítne i do jejího pruhu ve čtečce
for _id, _b in _barva.items():
    _stara = f'<article class="page" id="{_id}">'
    assert H.count(_stara) == 1, _id
    H = H.replace(_stara, f'<article class="page" id="{_id}" style="--kap:{_b}">')

# ---- postup na konci každé kapitoly: předchozí a další ----
_nazvy = {}
for _id, _telo in _clanky:
    _eb = _cista(_re.search(r'<p class="eyebrow">(.*?)</p>', _telo, _re.S).group(1))
    _cislo = _eb.split(' · ')[0] if ' · ' in _eb else ''
    _h2 = _cista(_re.search(r'<h2>(.*?)</h2>', _telo, _re.S).group(1))
    _nazvy[_id] = f'{_cislo} · {_h2}' if _cislo else _h2
_poradi = [_id for _id, _ in _clanky]

def _blok(_id, _smer, _popisek):
    return (f'      <a class="{_smer}" href="#{_id}" style="--cil:{_barva[_id]}">'
            f'<span class="s"><i></i>{_popisek}</span>'
            f'<span class="t">{_nazvy[_id]}</span></a>')

for _i, _id in enumerate(_poradi):
    _odkazy = []
    if _i > 0:
        _odkazy.append(_blok(_poradi[_i - 1], 'zpet', 'Předchozí'))
    if _i < len(_poradi) - 1:
        _odkazy.append(_blok(_poradi[_i + 1], 'dal', 'Další'))
    _nav = '    <nav class="postup" aria-label="Posun mezi kapitolami">\n' + '\n'.join(_odkazy) + '\n    </nav>\n'
    # vložit před patu právě té kapitoly
    _zacatek = H.index(f'<article class="page" id="{_id}"')
    _konec = H.index('</article>', _zacatek)
    _usek = H[_zacatek:_konec]
    _pata = _usek.index('  <div class="pfoot">')
    H = H[:_zacatek] + _usek[:_pata] + _nav + _usek[_pata:] + H[_konec:]
assert H.count('<nav class="postup"') == 24

for k,v in vals.items(): H = H.replace(k, v)
# kontrola: každá kapitola má právě jednu hlavičku a jeden nadpis
import re as _re
for _id, _telo in _re.findall(r'<article class="page[^"]*" id="([^"]+)">(.*?)</article>', H, _re.S):
    _e = len(_re.findall(r'<p class="eyebrow">', _telo))
    _h = len(_re.findall(r'<h2', _telo))
    if _e != 1 or _h != 1:
        raise SystemExit(f'CHYBA: kapitola {_id} má {_e} hlaviček a {_h} nadpisů')

open('/home/user/andrej-karpathy-skills/waldorf-olomouc-2026/logomanual.html','w',encoding='utf-8').write(H)
print("written", len(H), "bytes")
