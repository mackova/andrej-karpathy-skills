# Pokyny pro Claude Code inspirované Karpathym

Jediný soubor `CLAUDE.md`, který zlepšuje chování Claude Code. Vychází z [postřehů Andreje Karpathyho](https://x.com/karpathy/status/2015883857489522876) o chybách LLM při psaní kódu.

[English](../README.md) | Čeština

## Problémy

Z příspěvku Andreje Karpathyho (překlad):

> „Modely za vás dělají chybné předpoklady a bez ověření se jimi řídí dál. Neumějí zacházet s vlastní nejistotou, neptají se na upřesnění, neupozorňují na nesrovnalosti, nepředkládají kompromisy a neoponují, ani když by měly."

> „Opravdu rády kód i API zbytečně komplikují, nafukují abstrakce a nečistí mrtvý kód... naimplementují nabubřelou konstrukci na přes 1000 řádků, ačkoli by stačilo 100."

> „Pořád ještě občas jako vedlejší efekt změní nebo odstraní komentáře a kód, kterým dostatečně nerozumí, i když s úkolem nesouvisí."

## Řešení

Čtyři principy v jednom souboru, které tyto problémy řeší přímo:

| Princip | Řeší |
|---------|------|
| **Nejdřív přemýšlej, pak programuj** | Chybné předpoklady, skrytou nejistotu, chybějící kompromisy |
| **Nejdřív jednoduchost** | Přehnanou složitost, nafouknuté abstrakce |
| **Chirurgické změny** | Změny mimo zadání, zásahy do kódu, na který nemá nikdo sahat |
| **Provádění řízené cílem** | Páku v podobě testů nejdřív a ověřitelných kritérií úspěchu |

## Čtyři principy podrobně

### 1. Nejdřív přemýšlej, pak programuj

**Nic nepředpokládej. Nezakrývej nejasnosti. Pojmenuj kompromisy.**

LLM často tiše vybere jeden výklad a podle něj jede dál. Tento princip vynucuje explicitní úvahu:

- **Vyslov předpoklady nahlas** — Když si nejsi jistý, zeptej se, nehádej
- **Předlož více výkladů** — Při nejednoznačnosti nevybírej tiše
- **Oponuj, když je důvod** — Pokud existuje jednodušší cesta, řekni to
- **Při nejasnostech se zastav** — Pojmenuj, co není jasné, a požádej o upřesnění

### 2. Nejdřív jednoduchost

**Nejmenší množství kódu, které řeší problém. Nic do zásoby.**

Boj proti sklonu k přehnanému inženýrství:

- Žádné funkce navíc oproti zadání
- Žádné abstrakce pro jednorázový kód
- Žádná „flexibilita" ani „konfigurovatelnost", o kterou nikdo nežádal
- Žádné ošetření chyb v nemožných scénářích
- Pokud jde 200 řádků zredukovat na 50, přepiš je

**Test:** Řekl by zkušený inženýr, že je to zbytečně složité? Pokud ano, zjednoduš.

### 3. Chirurgické změny

**Dotkni se jen toho, čeho musíš. Uklízej jen vlastní nepořádek.**

Při úpravě existujícího kódu:

- Nevylepšuj sousední kód, komentáře ani formátování
- Nepřepisuj to, co není rozbité
- Drž se stávajícího stylu, i kdybys to udělal jinak
- Když si všimneš nesouvisejícího mrtvého kódu, upozorni na něj — nemaž ho

Když tvoje změny zanechají osiřelé části:

- Odstraň importy, proměnné a funkce, které přestaly být použité kvůli TVÝM změnám
- Dříve existující mrtvý kód nemaž, pokud o to nikdo nepožádal

**Test:** Každý změněný řádek musí jít přímo vysledovat k požadavku uživatele.

### 4. Provádění řízené cílem

**Stanov kritéria úspěchu. Opakuj, dokud to neověříš.**

Převeď příkazy na ověřitelné cíle:

| Místo... | Převeď na... |
|----------|--------------|
| „Přidej validaci" | „Napiš testy na neplatné vstupy a pak je zprovozni" |
| „Oprav chybu" | „Napiš test, který chybu reprodukuje, a pak ho zprovozni" |
| „Refaktoruj X" | „Zajisti, že testy projdou před změnou i po ní" |

U vícekrokových úkolů uveď stručný plán:

```
1. [Krok] → ověř: [kontrola]
2. [Krok] → ověř: [kontrola]
3. [Krok] → ověř: [kontrola]
```

Silná kritéria úspěchu umožní LLM pracovat samostatně v cyklu. Slabá kritéria („ať to funguje") vyžadují neustálé upřesňování.

## Instalace

**Varianta A: CLAUDE.md (pro jednotlivý projekt)**

Nový projekt:
```bash
curl -o CLAUDE.md https://raw.githubusercontent.com/mackova/andrej-karpathy-skills/main/cs/CLAUDE.md
```

Existující projekt (připojení na konec):
```bash
echo "" >> CLAUDE.md
curl https://raw.githubusercontent.com/mackova/andrej-karpathy-skills/main/cs/CLAUDE.md >> CLAUDE.md
```

**Varianta B: Agent Skill**

Zkopíruj [`SKILL.md`](./SKILL.md) do `skills/karpathy-guidelines/SKILL.md` ve svém projektu.

Plugin pro Claude Code (`/plugin install`) zatím existuje jen v anglické verzi.

## Použití s Cursorem

Zkopíruj [`karpathy-guidelines.mdc`](./karpathy-guidelines.mdc) do `.cursor/rules/karpathy-guidelines.mdc` ve svém projektu. Pravidlo má `alwaysApply: true`, takže se použije v každé konverzaci.

## Klíčový postřeh

Od Andreje:

> „LLM jsou výjimečně dobré v tom, že opakují, dokud nesplní konkrétní cíle... Neříkejte jim, co mají dělat, dejte jim kritéria úspěchu a sledujte, jak to zvládnou."

Princip „Provádění řízené cílem" to zachycuje: převeď imperativní pokyny na deklarativní cíle s ověřovacími smyčkami.

## Jak poznat, že to funguje

Zásady fungují, pokud uvidíš:

- **Méně zbytečných změn v diffech** — objeví se jen požadované změny
- **Méně přepisů kvůli přehnané složitosti** — kód je jednoduchý hned napoprvé
- **Doplňující otázky před implementací** — ne až po chybách
- **Čisté, minimální PR** — žádný vedlejší refaktoring ani „vylepšování"

## Přizpůsobení

Zásady jsou navržené tak, aby se slučovaly s pokyny specifickými pro projekt. Přidej je do stávajícího `CLAUDE.md` nebo vytvoř nový.

Pro pravidla specifická pro projekt přidej sekce například takto:

```markdown
## Pravidla specifická pro projekt

- Používej TypeScript ve strict režimu
- Všechny API endpointy musí mít testy
- Řiď se stávajícími vzory ošetření chyb v `src/utils/errors.ts`
```

## Poznámka ke kompromisu

Zásady upřednostňují **opatrnost před rychlostí**. U triviálních úkolů (oprava překlepu, zjevný jednořádek) použij úsudek — ne každá změna potřebuje plnou přísnost.

Cílem je omezit drahé chyby u netriviální práce, ne zpomalovat jednoduché úkoly.

## Licence

MIT
