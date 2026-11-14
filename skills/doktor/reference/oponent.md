# Oponent — oponentura závěru s dopadem

Oponenturu dělá samostatný skill **oponent** ([ondrnovy/oponent-skill](https://github.com/ondrnovy/oponent-skill))
se sadou rolí **`zdravi`** (`lekar`, `statistik`). Nezávislý Claude (volitelně i jiný model) dostane jen
anonymizované zadání, bez historie debaty a bez toho, co chce uživatel slyšet, a má závěr vyvrátit.

## Kdy

**Ano:** číslo rizika nebo pravděpodobnosti · doporučení testu, léčby, zákroku · dávka léku nebo
doplňku · výklad laboratorního, zobrazovacího nebo genetického nálezu · podklad, který půjde lékaři.
**Ne:** shrnutí zprávy, logistika, termíny, přepis.

## Jak

**Skill oponent je nainstalovaný** → použij ho, sada `zdravi`. Výsledek zapiš do analýzy jako sekci
`## Oponentura (<datum>, <modely>)`.

**Není nainstalovaný** → jednou větou doporuč instalaci (`npx skills add ondrnovy/oponent-skill`, plugin
`/plugin marketplace add ondrnovy/oponent-skill` a `/plugin install oponent@oponent-skill`, v claude.ai zip
z Releases) a mezitím udělej náhradní oponenturu:

1. **Zadání** (dočasný soubor nebo text), anonymizované podle `soukromi.md`, bez přání uživatele:
   ```markdown
   # Závěr
   <1–3 věty, včetně čísla>
   # Z čeho vychází
   <data, argumenty, literatura s odkazy>
   # Předpoklady
   <každý zvlášť>
   # Co by závěr vyvrátilo
   <vlastní nejslabší místa>
   ```
2. **Spuštění:** šablona `SKILL_DIR/oponent/prompt.md`, role `SKILL_DIR/oponent/role.md`.
   - Claude Code: jeden čerstvý subagent na roli, paralelně, do promptu **jen** vyplněná šablona.
   - claude.ai: dej uživateli vyplněnou šablonu ke zkopírování do **nového chatu** a výsledek ať vloží
     zpátky. Když nechce, udělej oponenturu sám v samostatné části a napiš, že je slabší.
3. **Verdikt** ke každé námitce:

   | Námitka | Kdo | Přijímám / odmítám | Proč | Co měním |
   |---|---|---|---|---|

   Odmítnutí musí mít důvod. Shoda oponentů není důkaz. Napiš, jak se závěr změnil (původně → nově).
4. **Zápis** do analýzy, surové výstupy oponentů neukládej. Když se závěr později ověří (lékař, test),
   doplň, kdo měl pravdu.
