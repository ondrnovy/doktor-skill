# Doktor – zdravotní průvodce pro Čechy (skill pro Claude)

Claude vám pomůže **rozumět vlastním zdravotním datům, připravit se k lékaři, nic nepropásnout v prevenci
a mít zdravotní data celé rodiny pohromadě**. Zná české zdravotnictví v praxi: kam bez žádanky, jak se
objednat, kde a za kolik si nechat udělat krev, na jakou prevenci máte nárok, co proplácí pojišťovna
a jak získat vlastní zdravotní dokumentaci.

**Aktuální verze: 0.1.0 (14. 11. 2026).** Přehled změn v [CHANGELOG.md](CHANGELOG.md).

## Manifest

**Lékař má na vás pár minut. Tenhle skill vám pomůže, aby stály za to.**

České veřejné zdravotní pojištění je ve srovnání se světem levné a dostupné. To je jeho velká přednost.
Má to ale cenu: v systému se musí někde šetřit, a často se šetří na **čase lékaře**. Praktik a ambulantní
specialista mají na pacienta pár minut. Na vysvětlování, na probrání rodinné anamnézy, na pohled na trend
výsledků za pět let nebo na otázku „a co s tím mám dělat já“ často nezbývá prostor. Pacient pak odejde
s výsledky, kterým nerozumí, nebo ho lékař „odbude“, a důsledky se ukážou až za roky.

Tohle není výtka lékařům. Je to vlastnost systému. A právě tuhle mezeru může AI pomoct vyplnit:

- **Vysvětlit**, co znamenají výsledky a zprávy, na co lékař neměl čas.
- **Zachytit včas rizika**, na která by člověk sám nepřišel: zhoršující se trend v krvi, rodinnou zátěž,
  propásnutý screening.
- **Připravit na návštěvu**, aby pár minut u lékaře mělo výsledek: co říct, na co se zeptat, co přinést.
- **Ukázat cestu**, když péče vázne: druhý názor, jiný lékař, pomoc pojišťovny se sehnáním termínu.

Lékař má vhled, vyšetření a zkušenost, které AI nemá. Skill proto **péči obohacuje, nenahrazuje**,
a vždycky směřuje k lékaři, ne od něj.

**A je poctivý i k vám.** Zdravotní AI má sklon říkat lidem, co chtějí slyšet. Tenhle skill má zásady
proti tomu: nejdřív hledá argument proti vaší hypotéze, čísla počítá i s výhradami a důležité závěry
nechává vyvrátit nezávislým „oponentem“.

> **Než začnete**
>
> Skill **nenahrazuje lékaře** a nestanovuje diagnózu. Umělá inteligence dělá chyby: může špatně přečíst
> hodnotu, splést si souvislosti nebo přehlédnout, co by lékař viděl na první pohled. Skill se tomu snaží
> bránit (zdroje u údajů, oponentura, zásady proti podlézání), ale za rozhodnutí o svém zdraví odpovídáte
> vy a váš lékař. Při akutních potížích volejte **155**.
>
> Česká pravidla (prevence, příspěvky pojišťoven, ceny laboratoří) se mění každý rok. Každý podklad má
> datum ověření a odkazy na zdroje.
>
> **Jste lékař?** Budu rád za kritiku. Když uvidíte chybu v postupu nebo v tom, co skill radí,
> [založte issue](https://github.com/ondrnovy/doktor-skill/issues) nebo mi napište.

## Co umí

- **Rozbor výsledků a zpráv** srozumitelně, s trendem proti předchozím odběrům a s otázkami pro lékaře.
- **Osobní přehled rizik:** co Čechy nejčastěji ohrožuje (srdce a cévy, tlusté střevo, kůže, ledviny…),
  co z toho se týká právě vás a co má, nebo naopak nemá, smysl hlídat.
- **Prevence:** co vám podle věku a pohlaví hradí pojišťovna, kdy jste byli naposledy, jak se objednat.
- **Laboratoře:** kdy stačí praktik, kdy samoplátce, kde a orientačně za kolik, jak číst jednotky a meze.
- **Vaše data:** jak získat výpis z dokumentace, výpis péče od pojišťovny, EZKarta, surová genetická data.
- **Příspěvky pojišťoven** z fondů prevence.
- **Zdravotní složka rodiny** (Claude Code): profil každého člena, léky, očkování, tabulka všech výsledků
  v čase, jedna fronta úkolů, kontakty na lékaře.
- **Příkaz `doktor`** (volitelně): v terminálu nebo ikonou na ploše otevře Clauda rovnou ve zdravotní složce.
- **Mobil:** se složkou na Google Drivu čte claude.ai data i z telefonu a poznámky ukládá do inboxu.
- **Oponent:** s doporučeným skillem [oponent](https://github.com/ondrnovy/oponent-skill) důležitý závěr (riziko, doporučení testu, dávka) nechá vyvrátit nezávislým Claudem v roli
  lékaře a statistika, volitelně i jiným modelem.

## Co budete potřebovat

- **Claude Code** (aplikace pro Mac/Windows nebo příkazová řádka) pro plnou verzi se zdravotní složkou, **nebo**
- **claude.ai** (web, mobil) pro rozbory nahraných zpráv, rady a přípravu k lékaři, bez trvalé složky.
- Placené předplatné Claude.

## Instalace

### Claude Code (plugin)

```
/plugin marketplace add ondrnovy/doktor-skill
/plugin install doktor@doktor-skill
```

Doporučujeme i skill **oponent** (oponentura závěrů, bez něj doktor použije slabší náhradu):

```
/plugin marketplace add ondrnovy/oponent-skill
/plugin install oponent@oponent-skill
```

Nebo obojí přes `npx skills add ondrnovy/doktor-skill` a `npx skills add ondrnovy/oponent-skill`.

Pak Claude Code restartujte. Aktualizace: v `/plugin` na kartě **Marketplaces** vyberte `doktor-skill`
a zapněte automatické aktualizace.

### claude.ai

Stáhněte `doktor-<verze>.zip` z [posledního vydání](https://github.com/ondrnovy/doktor-skill/releases)
a nahrajte ho v nastavení claude.ai v části Skills.

## Jak začít

Napište třeba:
- „Mám nové výsledky z krve, vysvětli mi je.“ (a přiložte PDF)
- „Na jakou prevenci mám nárok? Je mi 47, jsem muž.“
- „Chci založit zdravotní složku pro celou rodinu.“
- „Jak získám kopii své zdravotní dokumentace od praktika?“

## Soukromí

Zdravotní složka zůstává na vašem disku. Konverzace s Claudem běží přes servery Anthropicu podle nastavení
vašeho účtu. Ven (oponent jiným modelem, vyhledávání) jde jen anonymizované minimum a jen s vaším souhlasem.
Podrobně v [soukromi.md](skills/doktor/reference/soukromi.md).

## Otevřené vylepšování — přidejte se

Cílem je **co nejrelevantnější zdravotní skill pro Čechy**, a to sám autor nezvládne. Pravidla se mění,
ceny stárnou, lékaři vidí chyby, které laik nevidí. Projekt je proto otevřený: **klidně cokoliv upravte
a pošlete pull request**, rozumné změny se schvalují. Hodí se hlavně:

- oprava zastaralého nebo chybného údaje (s odkazem na aktuální zdroj),
- zkušenost z praxe: co lékař, laboratoř nebo pojišťovna dělá jinak, než píše web,
- nový podklad (další pojišťovna, region, typ vyšetření), nový testovací scénář,
- kritika postupu od lékařů, statistiků a dalších odborníků.

Jak na to: [CONTRIBUTING.md](CONTRIBUTING.md). Nechcete se učit Git? Stačí
[založit issue](https://github.com/ondrnovy/doktor-skill/issues/new) a popsat, co je špatně.

## Licence

MIT
