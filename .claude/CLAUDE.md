# doktor-skill — pravidla pro úpravy repa

Veřejný skill. Platí pro každou změnu:

- **Žádné osobní údaje** autora ani nikoho jiného. Příklady jsou vymyšlené.
- **Každý český údaj se zdrojem** (odkaz) a s datem ověření nahoře v souboru. Bez zdroje nepatří do `reference/`.
- Nejistoty do sekce `## Nejisté / k ověření` na konci souboru, ne do textu jako fakt.
- Žádná reklama. Firmy (laboratoře, pojišťovny) popisovat neutrálně, vedle sebe.
- Česky, krátké věty, prostý jazyk. Data absolutně.
- Změna chování nebo podkladů → zvýšit verzi v `.claude-plugin/plugin.json` (jediné místo s verzí)
  a zapsat do `CHANGELOG.md`.

## Pravidelná údržba

- **Leden:** přeověřit `prispevky-pojistoven.md` (nové programy na rok), `laboratore.md` (ceny),
  `prevence.md` (změny vyhlášek a screeningů).
- Po změně zákona nebo spuštění nové služby (EZKarta, Portál pacienta, EHDS) → `data-a-prava.md`, `system.md`.

## Vydání

Zip pro claude.ai (v repu nejsou skripty: adresář pluginů Anthropicu je od neověřených autorů nepřijímá):

```sh
ver=$(python3 -c 'import json;print(json.load(open(".claude-plugin/plugin.json"))["version"])')
mkdir -p dist && rm -f dist/doktor-$ver.zip
(cd skills && zip -qr ../dist/doktor-$ver.zip doktor -x '*.DS_Store') && cp dist/doktor-$ver.zip dist/doktor.zip
```

K GitHub release přilož **oba** zipy, `doktor.zip` drží stálý odkaz `releases/latest/download/doktor.zip` z README.

Do repa nepatří skripty ani soubory, které nejsou Markdown, text, JSON, YAML nebo obrázek, jinak neprojde
validace adresáře pluginů. Kontrola: `claude plugin validate . --strict`.
