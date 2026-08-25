# -*- coding: utf-8 -*-
"""Vygeneruje samostatné barevné SVG znaku pro místa, kam CSS nedosáhne
(favicon, e-mailové šablony, tisk, sociální sítě).

    python3 build_svg.py [počet výsečí, výchozí 72]

Barevné varianty jsou parametrické: odstín ±amplituda, sytost pevná,
světlost 24 → 62 → 24 %. ZUŠ má vlastní hodnoty, proto svítí jinak.
"""
import math, sys

PATH = open('path.txt').read().strip()
CX, CY = 122.57, 119.35          # střed kuželového přechodu ve viewBoxu
R = 190.0                        # poloměr, s rezervou přes celý znak

VARIANTS = {                     # (odstín, sytost, amplituda odstínu, střed světlosti, amplituda)
    'ms':  (320.3, 62, 16, 43.0, 19.0),
    'zs':  (142.2, 62, 16, 43.0, 19.0),
    'zus': ( 35.0, 92, 13, 52.5,  9.5),
    'ss':  (247.2, 62, 16, 43.0, 19.0),
}

def hsl2hex(h, s, l):
    s, l = s / 100, l / 100
    c = (1 - abs(2 * l - 1)) * s
    x = c * (1 - abs((h / 60) % 2 - 1))
    m = l - c / 2
    r, g, b = [(c, x, 0), (x, c, 0), (0, c, x), (0, x, c), (x, 0, c), (c, 0, x)][int(h // 60) % 6]
    return '#%02X%02X%02X' % tuple(round((v + m) * 255) for v in (r, g, b))

def wedges(hue, sat, hamp, lc, lamp, n):
    out = []
    step = 360 / n
    for i in range(n):
        # výseče se mírně překrývají, jinak mezi nimi zůstanou antialiasové spáry
        a0, a1 = i * step, (i + 1) * step + step * 0.6
        t = math.radians((a0 + a1) / 2)
        col = hsl2hex((hue - hamp * math.sin(t + math.pi)) % 360, sat, lc + lamp * math.cos(t))
        pts = []
        for a in (a0, a1):
            r = math.radians(a)
            pts.append(f"{CX + R * math.sin(r):.1f},{CY - R * math.cos(r):.1f}")
        out.append(f'<polygon fill="{col}" points="{CX},{CY} {" ".join(pts)}"/>')
    return "".join(out)

def svg(body):
    return ('<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 245.15 238.7">'
            '<defs><clipPath id="s" transform="translate(-174.43 -275.35)">'
            f'<path d="{PATH}"/></clipPath></defs>'
            f'<g clip-path="url(#s)">{body}</g></svg>')

if __name__ == '__main__':
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 180
    for name, p in VARIANTS.items():
        out = svg(wedges(*p, n))
        open(f'waldorf-mark-{name}.svg', 'w').write(out)
        print(f'waldorf-mark-{name}.svg  {len(out):,} B'.replace(',', ' '))
