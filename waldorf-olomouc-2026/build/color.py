# -*- coding: utf-8 -*-
"""OKLab/OKLCH <-> sRGB + WCAG kontrast (Björn Ottosson)."""
import math

def _f(x): return x/12.92 if x<=0.04045 else ((x+0.055)/1.055)**2.4
def _g(x): return 12.92*x if x<=0.0031308 else 1.055*(x**(1/2.4))-0.055

def hex2rgb(h): return tuple(int(h[i:i+2],16)/255 for i in (1,3,5))
def rgb2hex(c): return '#%02X%02X%02X'%tuple(max(0,min(255,round(x*255))) for x in c)

def lum(c):
    r,g,b=[_f(x) for x in c]; return 0.2126*r+0.7152*g+0.0722*b
def contrast(c1,c2):
    a,b=lum(c1),lum(c2); hi,lo=max(a,b),min(a,b); return (hi+0.05)/(lo+0.05)

def rgb2oklab(c):
    r,g,b=[_f(x) for x in c]
    l=0.4122214708*r+0.5363325363*g+0.0514459929*b
    m=0.2119034982*r+0.6806995451*g+0.1073969566*b
    s=0.0883024619*r+0.2817188376*g+0.6299787005*b
    l,m,s=l**(1/3) if l>0 else -(-l)**(1/3), m**(1/3) if m>0 else -(-m)**(1/3), s**(1/3) if s>0 else -(-s)**(1/3)
    return (0.2104542553*l+0.7936177850*m-0.0040720468*s,
            1.9779984951*l-2.4285922050*m+0.4505937099*s,
            0.0259040371*l+0.7827717662*m-0.8086757660*s)

def oklab2rgb(lab):
    L,a,b=lab
    l=(L+0.3963377774*a+0.2158037573*b)**3
    m=(L-0.1055613458*a-0.0638541728*b)**3
    s=(L-0.0894841775*a-1.2914855480*b)**3
    r= 4.0767416621*l-3.3077115913*m+0.2309699292*s
    g=-1.2684380046*l+2.6097574011*m-0.3413193965*s
    bb=-0.0041960863*l-0.7034186147*m+1.7076147010*s
    return (_g(r),_g(g),_g(bb))

def oklch(c):
    L,a,b=rgb2oklab(c)
    return (L, math.hypot(a,b), math.degrees(math.atan2(b,a))%360)
def from_oklch(L,C,H):
    t=math.radians(H); return oklab2rgb((L,C*math.cos(t),C*math.sin(t)))
def in_gamut(c,eps=1e-4): return all(-eps<=x<=1+eps for x in c)

def best(hue, against, target, lo=0.20, hi=0.95):
    """Nejsytější barva daného odstínu, která splní kontrast vůči pozadí."""
    bestc=None
    L=lo
    while L<=hi:
        C=0.0; found=None
        while C<0.45:
            c=from_oklch(L,C,hue)
            if not in_gamut(c): break
            if contrast(c,against)>=target: found=(C,c)
            C+=0.002
        if found and (bestc is None or found[0]>bestc[0]): bestc=(found[0],found[1],L)
        L+=0.004
    return bestc
