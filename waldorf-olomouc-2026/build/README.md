# Build

`moodboards.html` se generuje z `page.tpl`:

    python3 build.py

- `clip.txt` — ořezová cesta znaku (439 B), vytažená z dodaného SVG logomanuálu.
- `spectrum.css` — plná barevná verze znaku jako `conic-gradient`, navzorkovaná
  po 7,5° z původních 999 výsečí.
- `build.py` — dopočítá čtyři varianty škol parametricky (odstín ±16°, sytost 62 %,
  světlost 24→62→24 %; ZUŠ ±13°, 92 %, 43→62 %) a vloží je do šablony.

Znak se vykresluje jednou ořezovou cestou plus CSS `conic-gradient` místo
sedmi SVG po 110–124 kB.
