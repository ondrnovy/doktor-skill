# Doktor – zdravotní průvodce pro Čechy (skill pro Claude)

Claude vám pomůže **rozumět vlastním zdravotním datům, připravit se k lékaři, nic nepropásnout v prevenci
a mít zdravotní data celé rodiny pohromadě**. Zná české zdravotnictví v praxi: kam bez žádanky, jak se
objednat, kde a za kolik si nechat udělat krev, na jakou prevenci máte nárok, co proplácí pojišťovna
a jak získat vlastní zdravotní dokumentaci.

**Aktuální verze: 0.1.2 (20. 11. 2026).** Přehled změn v [CHANGELOG.md](CHANGELOG.md).

**[⬇ Stáhnout pro claude.ai](https://github.com/ondrnovy/doktor-skill/releases/latest/download/doktor.zip)** · [Jak nainstalovat](#instalace) · [Ukázka](#ukázka)

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
> [založte issue](https://github.com/ondrnovy/doktor-skill/issues) nebo napište do
> [diskuze](https://github.com/ondrnovy/doktor-skill/discussions).

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

## Ukázka

Vymyšlená pacientka, 44 let, nekuřačka, napíše: *„Mám výsledky z preventivky od praktika, říkala,
že je to v pořádku, ale nic mi nevysvětlila. Co to znamená?“* a přiloží výsledky (glukóza 5,8 mmol/l,
celkový cholesterol 6,1, LDL 4,0, HDL 1,6, feritin 14 µg/l, ostatní v mezích, tlak 132/84).

<details>
<summary><b>Odpověď skillu v claude.ai</b> (rozbalte)</summary>

> **Závěr**
> Praktička má částečně pravdu: nic z toho není akutní a krevní obraz, játra, ledviny i štítná žláza
> vycházejí dobře. Tři věci si ale zaslouží pozornost, než se na ně zapomene: **LDL a celkový cholesterol**
> (mírně zvýšené), **glukóza 5,8** (těsně nad mezí) a **feritin 14** (formálně v normě, prakticky na dně).
> **Jistota:** střední. Nevím, jestli jsi byla nalačno, jaké máš příznaky ani co je v rodině.
>
> **Co z toho plyne prakticky**
> - **Cholesterol:** LDL 4,0 je zvýšený, ale HDL 1,6 a triglyceridy 1,1 jsou dobré. Ve 44 letech,
>   nekuřačka, tlak pod 140/90, to samo o sobě nevolá po léčbě. Zjisti si 10leté riziko v kalkulátoru
>   SCORE2 Evropské kardiologické společnosti a vezmi číslo k lékaři.
> - **Lp(a):** pojišťovna ho hradí jednou při vstupní prohlídce u praktika, pokud ještě nebyl měřen.
>   Zeptej se, jestli ho máš.
> - **Glukóza 5,8:** pokud jsi byla nalačno, je to hraniční hodnota, ne cukrovka. Jedno měření nestačí.
>   Zopakuj nalačno nebo požádej o HbA1c.
> - **Feritin 14:** je to zásoba železa. Pod 15 µg/l se podle WHO (2020) bere jako vyčerpaná zásoba,
>   i když laboratorní mez je 13. Řeš to s lékařkou, zvlášť pokud jsi unavená, padají ti vlasy nebo máš
>   silnou menstruaci. **Železo nezačínej brát naslepo.**
> - **Tlak 132/84:** jedno měření v ordinaci. Změř si ho doma 7 dní ráno a večer a zapisuj.
> - **Co se nemusí:** žádné další „velké panely“. Podle většiny těchto hodnot by se nic nezměnilo.
> - **Příští rok (45 let):** hrazená mamografie, HPV test u gynekologa a test na skryté krvácení
>   ve stolici.
>
> **Proč**
> - **Argument proti „je to v pořádku“:** všechny tři nálezy jsou mírné, ale nic z toho se samo nespraví.
> - **Argument pro:** hemoglobin, jaterní testy, ledviny a štítná žláza jsou v pořádku a hodnoty jsou
>   z jednoho odběru, takže mohou kolísat.
>
> **Otázky pro lékaře**
> 1. Mám Lp(a) změřený? Jaké je moje riziko podle SCORE2?
> 2. Stačí zopakovat glykémii nalačno, nebo mám mít HbA1c?
> 3. Proč mám nízký feritin? Mám zkontrolovat krevní obraz znovu?
> 4. Kdy mám zopakovat lipidy a tlak?
>
> **Co potřebuju vědět:** byl odběr nalačno? Léky a doplňky (antikoncepce, železo, biotin)? Silná
> menstruace, únava? Kdo v rodině měl infarkt, mrtvici nebo cukrovku, a v kolika letech?

Výstup je zkrácený. V plné verzi jsou i odkazy na zdroje, kontrola, že čísla spolu sedí, a co by závěr
změnilo.

</details>

## Co budete potřebovat

- **claude.ai** (web, mobilní aplikace) pro rozbory nahraných zpráv, rady a přípravu k lékaři.
  Podle [nápovědy Anthropicu](https://support.claude.com/en/articles/12512180-use-skills-in-claude)
  jdou vlastní skilly nahrát i na bezplatném plánu, **nebo**
- **Claude Code** (aplikace pro Mac/Windows nebo příkazová řádka) pro plnou verzi se zdravotní složkou
  rodiny. Potřebuje placené předplatné.

## Instalace

### claude.ai (web a mobil) — nejjednodušší

1. Stáhněte **[doktor.zip](https://github.com/ondrnovy/doktor-skill/releases/latest/download/doktor.zip)**
   (vždy poslední verze). Zip nerozbalujte.
2. Na [claude.ai](https://claude.ai) v prohlížeči zapněte v **Nastavení → Capabilities** vytváření souborů
   a spouštění kódu („Create and edit files“, dřív „Code execution and file creation“). Bez toho skilly nefungují.
3. Otevřete **Customize → Skills**, klikněte na **+** → **Create skill** → **Upload a skill** a vyberte
   stažený `doktor.zip`. (Ve starším rozhraní: Nastavení → Capabilities → Skills → Upload skill.)
4. Zkontrolujte, že je skill `doktor` zapnutý. Od té chvíle ho máte i v mobilní aplikaci.
5. Vyzkoušejte v novém chatu: „Na jakou prevenci mám nárok? Je mi 40, jsem muž.“ Skill se zapne sám
   podle tématu.

Nová verze: starý skill v seznamu smažte a nahrajte nový `doktor.zip`. Rozhraní claude.ai se mění;
aktuální postup je v [nápovědě Anthropicu](https://support.claude.com/en/articles/12512180-use-skills-in-claude).

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
Dotaz, zkušenost nebo nápad patří do [diskuze](https://github.com/ondrnovy/doktor-skill/discussions)
(stačí účet na GitHubu). **Nikam nepište svoje zdravotní údaje**, issues i diskuze jsou veřejné.

## Licence

MIT
