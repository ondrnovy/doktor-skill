# doktor-skill — pravidla pro úpravy repa

Veřejný skill. Platí pro každou změnu:

- **Žádné osobní údaje** autora ani nikoho jiného. Příklady jsou vymyšlené.
- **Každý český údaj se zdrojem** (odkaz) a s datem ověření nahoře v souboru. Bez zdroje nepatří do `reference/`.
- Nejistoty do sekce `## Nejisté / k ověření` na konci souboru, ne do textu jako fakt.
- Žádná reklama. Firmy (laboratoře, pojišťovny) popisovat neutrálně, vedle sebe.
- Česky, krátké věty, prostý jazyk. Data absolutně.
- Změna chování nebo podkladů → zvýšit verzi v `skills/doktor/VERZE` a `.claude-plugin/plugin.json`
  a zapsat do `CHANGELOG.md`.

## Pravidelná údržba

- **Leden:** přeověřit `prispevky-pojistoven.md` (nové programy na rok), `laboratore.md` (ceny),
  `prevence.md` (změny vyhlášek a screeningů).
- Po změně zákona nebo spuštění nové služby (EZKarta, Portál pacienta, EHDS) → `data-a-prava.md`, `system.md`.

## Vydání

`tools/zabal.sh` vytvoří do `dist/` zip pro claude.ai ve dvou kopiích: `doktor-<verze>.zip` a `doktor.zip`. K GitHub release přilož **obě**, `doktor.zip` drží stálý odkaz `releases/latest/download/doktor.zip` z README.
