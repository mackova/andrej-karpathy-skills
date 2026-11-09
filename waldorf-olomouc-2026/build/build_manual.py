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
 '__SPECFLOW__': SPEC.replace('from 0deg', 'from var(--wm-uhel)', 1),
}
H = open('manual.tpl',encoding='utf-8').read()

# ---- rozcestník: dlaždice se generují z kapitol, aby nemohly utéct obsahu ----
import re as _re, html as _html
_SKOLY = {'k20': ('g-ms', '#BC4D96'), 'k21': ('g-zs', '#3F905D'),
          'k22': ('g-zus', '#EE9B00'), 'k23': ('g-ss', '#4A3CB0')}
_DILY = {'Značka': 'A', 'Web': 'B', 'Pohyb': 'C', 'Identita': 'D', 'Školy': 'E'}

def _cista(x):
    return _re.sub(r'\s+', ' ', _html.unescape(_re.sub(r'<[^>]+>', '', x))).strip()

def _upoutavka(telo):
    m = _re.search(r'<p class="lead">(.*?)</p>', telo, _re.S)
    if not m: return ''
    t = _cista(m.group(1))
    v = _re.split(r'(?<=[.!?]) ', t)[0]
    if len(v) > 95:
        v = v.split(';')[0]
    if len(v) > 95:
        v = v[:92].rsplit(' ', 1)[0] + '…'
    return v

_clanky = _re.findall(r'<article class="page[^"]*" id="(k\d+|prehled)">(.*?)</article>', H, _re.S)
assert len(_clanky) == 24, f'čekám 24 kapitol, mám {len(_clanky)}'
_skupiny = []
for _id, _telo in _clanky:
    _eb = _cista(_re.search(r'<p class="eyebrow">(.*?)</p>', _telo, _re.S).group(1))
    _h2 = _cista(_re.search(r'<h2>(.*?)</h2>', _telo, _re.S).group(1))
    _cast = _eb.split(' · ')
    _cislo, _skup = (_cast[0], _cast[1]) if len(_cast) == 2 else ('—', _eb)
    _popis = _dil = _DILY.get(_skup)
    _nadpis = f'{_dil} · {_skup}' if _dil else _skup
    if not _skupiny or _skupiny[-1][0] != _nadpis:
        _skupiny.append((_nadpis, []))
    _znak, _pas = '', ''
    if _id in _SKOLY:
        _t, _b = _SKOLY[_id]
        _znak = (f'<span class="mark {_t}" style="width:40px;height:38.95px" aria-hidden="true">'
                 f'<i style="transform:scale(.16317)"></i></span>')
        _pas = f' style="background:{_b}"'
    _skupiny[-1][1].append(
        f'      <a class="dl" href="#{_id}">\n'
        f'        <span class="pas"{_pas}></span>\n'
        f'        <span class="telo">\n'
        f'          <span class="hl"><span class="c">{_cislo}</span>{_znak}</span>\n'
        f'          <span class="t">{_h2}</span>\n'
        f'          <span class="p">{_upoutavka(_telo)}</span>\n'
        f'        </span>\n'
        f'      </a>')
_ven = []
for _nadpis, _dl in _skupiny:
    _ven.append(f'  <section class="skupina">\n    <p class="sl">{_nadpis}</p>\n'
                f'    <div class="dlazdice">\n' + '\n'.join(_dl) + '\n    </div>\n  </section>')
vals['__DLAZDICE__'] = '\n'.join(_ven)

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
