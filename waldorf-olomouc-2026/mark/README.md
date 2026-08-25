# Znak Waldorfské školy Olomouc — nasazení

Znak jako kód, ne jako obrázek. Sedm variant z jedné ořezové cesty o **421 bajtech**.

## Soubory

| Soubor | K čemu | Velikost |
|---|---|---|
| `waldorf-mark-clip.svg` | ořezová cesta, vkládá se do stránky jednou | 608 B |
| `waldorf-mark.css` | proměnné, varianty, pravidlo minimální velikosti | 5,3 kB |
| `waldorf-mark.html` | ukázka nasazení a všech variant | — |
| `waldorf-mark-ink.svg` | jednobarevný znak, favicon a e-mail | 560 B |
| `waldorf-mark-white.svg` | negativní znak | 560 B |
| `build_svg.py` | generátor barevných samostatných SVG | — |
| `path.txt` | samotná cesta, zdroj všeho ostatního | 421 B |

## Použití na webu

```html
<!-- jednou kdekoli v <body> -->
<svg width="0" height="0" aria-hidden="true" style="position:absolute">
  <clipPath id="waldorf-spiral" transform="translate(-174.43 -275.35)">…</clipPath>
</svg>

<link rel="stylesheet" href="waldorf-mark.css">

<span class="wm wm--zs" style="--wm-size:44px"
      role="img" aria-label="Základní škola"></span>
```

Varianty: `wm--spectrum` (celý koncept), `wm--ms`, `wm--zs`, `wm--zus`, `wm--ss`,
`wm--ink`, `wm--white`.

Ořezová cesta musí být **v témže dokumentu**. Odkaz na `clip-path: url()` do
externího souboru napříč prohlížeči nefunguje.

## Pravidlo minimální velikosti hlídá kód

Pod 44 px se barevné varianty automaticky přepnou na jednobarevnou — spirála by se
slila. Řeší to `@container` dotaz, takže stačí zapsat `class="wm wm--spectrum"`
a velikost; o zbytek se stará CSS. Negativní varianta se nepřepisuje, ta na tmavé
ploše platí v každé velikosti.

## Samostatná SVG pro tisk, e-mail a sociální sítě

`conic-gradient` je CSS a do SVG souboru se nepřenese. Pro místa mimo web:

```
python3 build_svg.py 180
```

Vytvoří `waldorf-mark-{ms,zs,zus,ss}.svg` — 13,4 kB místo dodaných 110–124 kB.
Pro obrazovku stačí i `72` (5,7 kB), pro velkoformátový tisk je bezpečnější `360`.

Výseče se mírně překrývají. Bez překryvu vznikají mezi nimi antialiasové spáry,
které se projeví jako paprsky — dodané soubory s 999 výsečemi je mají.

## Barvy variant jsou parametrické

Nejsou to samostatné soubory, ale hodnoty: odstín ± amplituda, pevná sytost,
světlost 24 → 62 → 24 %.

| Varianta | Odstín | Sytost | Amplituda odstínu | Světlost |
|---|---|---|---|---|
| Mateřská | 320,3° | 62 % | ±16° | 24–62 % |
| Základní | 142,2° | 62 % | ±16° | 24–62 % |
| ZUŠ Fantazie | 35,0° | 92 % | ±13° | 43–62 % |
| Střední | 247,2° | 62 % | ±16° | 24–62 % |

Plné spektrum je vzorkované z původního souboru po 7,5°.
