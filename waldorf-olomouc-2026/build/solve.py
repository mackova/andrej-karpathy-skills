# -*- coding: utf-8 -*-
from color import *
import math
WHITE=hex2rgb('#FFFFFF'); INK=hex2rgb('#101216'); DARK=hex2rgb('#0C0E11')
BR=[('MŠ','#C0509A'),('ZŠ','#3F905D'),('ZUŠ Fantazie','#EE9B00'),('SŠ','#4A3CB0')]

def de(a,b):
    la,lb=rgb2oklab(a),rgb2oklab(b)
    return math.dist(la,lb)

def closest(orig, test, hue_tol=8.0):
    """Nejbližší barva k originálu (OKLab ΔE), která projde testem."""
    L0,C0,H0=oklch(orig); bestv=None
    L=0.10
    while L<=0.99:
        dh=-hue_tol
        while dh<=hue_tol+1e-9:
            H=(H0+dh)%360; C=0.0
            while C<0.42:
                c=from_oklch(L,C,H)
                if not in_gamut(c): break
                if test(c):
                    d=de(c,orig)
                    if bestv is None or d<bestv[0]: bestv=(d,c,L,C,H)
                C+=0.002
            dh+=2.0
        L+=0.004
    return bestv
