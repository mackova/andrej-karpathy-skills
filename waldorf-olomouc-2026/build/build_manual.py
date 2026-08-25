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
}
H = open('manual.tpl',encoding='utf-8').read()
for k,v in vals.items(): H = H.replace(k, v)
open('/home/user/andrej-karpathy-skills/waldorf-olomouc-2026/logomanual.html','w',encoding='utf-8').write(H)
print("written", len(H), "bytes")
