# Build

Dva dokumenty, oba generované ze šablon:

- `logomanual.html` ← `manual.tpl` (spojení `manual_head/a/b/c/d.tpl`) přes `build_manual.py`
- `moodboards.html` ← `page.tpl` přes `build.py`

Spojení částí manuálu:

    cat manual_head.tpl manual_a.tpl manual_b.tpl manual_c.tpl manual_d.tpl > manual.tpl
    python3 build_manual.py

Prezentace směrů:

    python3 build.py

- `clip.txt` — ořezová cesta znaku (439 B), vytažená z dodaného SVG logomanuálu.
- `spectrum.css` — plná barevná verze znaku jako `conic-gradient`, navzorkovaná
  po 7,5° z původních 999 výsečí.
- `build.py` — dopočítá čtyři varianty škol parametricky (odstín ±16°, sytost 62 %,
  světlost 24→62→24 %; ZUŠ ±13°, 92 %, 43→62 %) a vloží je do šablony.

Znak se vykresluje jednou ořezovou cestou plus CSS `conic-gradient` místo
sedmi SVG po 110–124 kB.

## Barevné výpočty

- `color.py` — OKLab/OKLCH ↔ sRGB (Björn Ottosson) + WCAG kontrast.
- `solve.py` — hledá nejbližší barvu k originálu (OKLab ΔE), která splní zadaný
  kontrastní práh. Používá se pro dopočet textových tokenů, sytých ploch a tintů.

Klíčový výsledek: kontrast řídí jas, ne odstín. Barva projde 4,5:1 na bílé jen
při relativním jasu ≤ 0,183; #EE9B00 má 0,416. Žádná svítivá teplá barva tedy
projít nemůže a dvoustupňový systém je jediné řešení.
