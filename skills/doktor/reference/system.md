# Jak funguje české zdravotnictví v praxi (pohled pacienta)

Ověřeno: 14. 11. 2026

Pro koho: Claude čte tento soubor, když radí uživateli, jak v Česku věci prakticky fungují.
Neslouží k diagnóze. Zákony cituji podle znění platného od 1. 1. 2026 (zakonyprolidi.cz).
Zkratky: ZZS = zákon 372/2011 Sb. o zdravotních službách. ZVZP = zákon 48/1997 Sb. o veřejném zdravotním pojištění.
Co se nepodařilo potvrdit, je na konci v sekci „Nejisté / k ověření“.

## 1. Veřejné pojištění a pojišťovny

Většina lidí s pobytem v ČR je pojištěná ve veřejném systému. Pojišťovnu si vybíráte sami (ZVZP § 11 odst. 1 písm. a).
Sedm pojišťoven. Kód je číslo, které je v čísle pojištěnce a na kartě.

| Kód | Pojišťovna | Web | Klientský přístup (název podle jejich webů) |
|---|---|---|---|
| 111 | VZP | [vzp.cz](https://www.vzp.cz) | Moje VZP (web a aplikace) |
| 201 | VoZP | [vozp.cz](https://www.vozp.cz/klientsky-portal) | Klientský portál, aplikace Zdraví na klik |
| 205 | ČPZP | [cpzp.cz](https://www.cpzp.cz/clanek/3344-0-Elektronicka-prepazka-portal-CPZP.html) | Elektronická přepážka, mobilní aplikace |
| 207 | OZP | [ozp.cz](https://www.ozp.cz) | VITAKARTA online a aplikace |
| 209 | ZPŠ | [zpskoda.cz](https://www.zpskoda.cz/karta-meho-srdce) | Karta mého srdce (kartamehosrdce.cz) |
| 211 | ZP MV ČR | [zpmvcr.cz](https://www.zpmvcr.cz/pojistenci/moznosti-komunikace-se-zp-211/e-komunikace) | E-komunikace, aplikace ZP211 |
| 213 | RBP | [rbp213.cz](https://www.rbp213.cz) | my213 ([návod](https://www.my213.cz/navod-k-registraci-a-prihlaseni)) |

Kódy: [banky.cz](https://www.banky.cz/clanky/kompletni-pruvodce-zdravotnimi-pojistovnami-a-jejich-prispevky/), VZP 111 a ZPŠ 209 potvrzují i weby pojišťoven.
Přihlášení bývá přes bankovní identitu (BankID) nebo Identitu občana (NIA). Starší cesta je heslo a dopis s aktivačním kódem.
Co přesně umí které portál (např. výpis péče), je v souboru `data-a-prava.md`.

### Změna pojišťovny (ZVZP § 11a)
- Smíte ji změnit jen 1x za 12 měsíců.
- Změna platí vždy od 1. 1. nebo od 1. 7.
- Přihlášku s podpisem podáte nové pojišťovně v pololetí před změnou. Nejpozději 3 měsíce před dnem změny.
- Prakticky: pro 1. 7. 2027 do konce března 2027. Pro 1. 1. 2028 do konce září 2027. Přesný poslední den si ověřte u nové pojišťovny.
- Přihlášku lze podat jen jednu za kalendářní rok.
- Výjimky (zánik pojišťovny, nucená správa, sloučení) dovolují změnu rychleji (§ 11a odst. 2).
- Novorozenec dostane pojišťovnu matky (§ 11a odst. 4).
- Zdroj: [ZVZP](https://www.zakonyprolidi.cz/cs/1997-48).

## 2. Registrující lékaři

Registrující poskytovatel je ambulantní lékař, který vás přijal do péče v oboru:
praktický lékař pro dospělé, praktický lékař pro děti a dorost (pediatr), zubní lékař nebo gynekolog.
Při přijetí podepíšete registrační list (ZZS § 3 odst. 5). Zdroj: [ZZS](https://www.zakonyprolidi.cz/cs/2011-372).

### Pravidla
- Registrujícího lékaře můžete změnit 1x za 3 měsíce (ZVZP § 11 odst. 1 písm. b).
- Nový lékař si může vyžádat vaši dokumentaci. Dosavadní lékař ji musí předat do 15 dnů (ZZS § 45 odst. 2 písm. h).
- Lékař smí odmítnout přijetí jen ze zákonných důvodů (ZZS § 48 odst. 1):
  - plná kapacita nebo provozní důvody,
  - u praktika a pediatra: bydlíte tak daleko, že nejde zajistit návštěvní službu,
  - nejste pojištěnec pojišťovny, se kterou má smlouvu.
- Odmítnutí musí lékař na požádání zdůvodnit písemně (§ 48 odst. 5).
- Neodkladnou péči lékař odmítnout nesmí (§ 48 odst. 3).
- Od 1. 1. 2026 nesmí lékař podmínit přijetí „registračním poplatkem“, darem ani nákupem zboží (§ 48 odst. 6 písm. c). Zavedl to zákon 290/2025 Sb. s účinností od 1. 1. 2026 ([zakonyprolidi.cz](https://www.zakonyprolidi.cz/cs/2025-290)). VZP to potvrzuje 24. 3. 2026: [Otázky a odpovědi na poplatky u lékařů](https://www.vzp.cz/o-nas/aktuality/otazky-a-odpovedi-na-poplatky-u-lekaru).
- MZ k tomu vydalo metodické stanovisko (8. 10. 2026). Nezáleží na názvu platby (registrační, administrativní, roční). Rozhoduje její skutečná povaha. Stanovisko míří na smluvní poskytovatele: [Platba za registraci](https://mzd.gov.cz/wp-content/uploads/2026/10/Metodicke_stanovisko_k_platbam_pacientu_kazuisticka_cast_1_Platba_za_registraci.pdf).
- Zvláštní „právo na registraci“ u konkrétního lékaře zákon nedává. Je to volba obou stran. Pojišťovna ale musí zajistit, aby péče byla dostupná (viz část 4).

### Jak najít lékaře s volnou kapacitou
1. Seznam smluvních lékařů má každá pojišťovna na webu. Zákon jí to ukládá (ZVZP § 40 odst. 6 písm. a).
2. Zavolat nebo napsat do ordinace a zeptat se přímo, zda přijímají nové pacienty. Ordinační doba musí být viditelná (ZZS § 45 odst. 2 písm. c).
3. Nepodaří-li se, použít formulář ministerstva: [nedostupnapece.mzcr.cz](https://nedostupnapece.mzcr.cz). Vyberete obor (praktik, pediatr, zubař, jiný) a pojišťovnu. Pojišťovna vás pak kontaktuje a pomáhá lékaře najít. Lhůtu na odpověď stránka neuvádí.
4. Neexistuje povinnost chodit jen do „spádové“ ordinace. Můžete jet do jiného města (novinky.cz, právník PULZ, 28. 3. 2023, [článek](https://www.novinky.cz/clanek/domaci-dlouho-cekate-na-vysetreni-obratte-se-na-pojistovnu-40426499)).

## 3. Specialisté: kdy bez žádanky a kdy s ní

### Přímý přístup ke specialistovi
- Zákon dává pacientovi svobodnou volbu poskytovatele (ZZS § 28 odst. 3 písm. b; ZVZP § 11 odst. 1 písm. b). Zákon nevyžaduje, aby ambulantního specialistu „odemkl“ praktik.
- MZ to nepřímo potvrzuje v odpovědi na žádost o informace (2022): praktik jen vydává doporučení a nezajišťuje návštěvu u specialisty, protože pacient si poskytovatele volí sám podle § 28 odst. 3 písm. b) ([odpověď MZ](https://mzd.gov.cz/wp-content/uploads/2022/11/428.pdf)). Tak to MZ popisuje i v rozhovoru z 24. 10. 2018: u nás je svobodná volba poskytovatele ([MZ](https://mzd.gov.cz/tiskove-centrum-mz/lekaru-je-dost-chodime-k-nim-ale-zbytecne-casto-rika-odbornice-z-ministerstva-zdravotnictvi/)). Výslovné ustanovení „doporučení není potřeba“ ani samostatné stanovisko MZ jsem nenašel.
- Prakticky většina ambulantních specialistů (např. oční, kožní, ORL, ortoped, psychiatr) přijímá i bez doporučení, pokud mají kapacitu a smlouvu s vaší pojišťovnou.
- Specialista může odmítnout kvůli plné kapacitě (§ 48 odst. 1 písm. a).
- Některé ordinace si doporučení „žádají“ jako svůj interní pořádek. Zákonný základ jsem nenašel (viz nejisté).
- Doporučení praktika je užitečné, protože specialista dostane důvod vyšetření a výsledky.

### Kde je potřeba žádanka nebo indikace
- Vyšetření „na vyžádání“: zobrazovací metody (RTG, ultrazvuk, CT, MRI), laboratoře, fyzioterapie, konzilia. Tady žádanku vystavuje ošetřující lékař. Samotný pacient ji bez lékaře nezíská.
- Dále vybrané výkony a služby (domácí péče, lázně, některé drahé výkony) mají v číselnících pojišťoven podmínku indikace nebo doporučení. Příklad v přílohách ZVZP: výkon 911 (komplexní posouzení před domácí ošetřovatelskou péčí) se hradí jen na doporučení praktika.
- Samoplátce si leckde může objednat vyšetření bez žádanky. To je praxe soukromých pracovišť, ne právní nárok.
- Jednorázově: 1 200+ léků má být od 30. 6. 2026 předepisovatelných i praktikem ([MZ](https://mzd.gov.cz/tiskove-centrum-mz/vice-nez-1-200-leku-nove-u-praktickeho-lekare-ministerstvo-zdravotnictvi-usnadnuje-pacientum-pristup-k-lecbe/)). Rozsah není ověřen.

### eŽádanka (stav listopad 2026)
- eŽádanka je žádanka v elektronické podobě. Zákon ji upravuje v § 31a zákona 325/2021 Sb. ([text](https://www.zakonyprolidi.cz/cs/2021-325)).
- Lékař ji uloží do dočasného úložiště a písemně sdělí pacientovi její identifikátor. Na žádost ji vytiskne na papír (§ 31a odst. 3).
- Dnes je to dobrovolné. Lékaři mohou eŽádanky vystavovat od 2. 1. 2026 (zobrazovací, konziliární a fyzioterapeutické vyšetření) ([e15](https://www.e15.cz/finexpert/servis/stat-spustil-portal-ezdravi-pacienti-uvidi-dokumentaci-lekari-vystavi-ezadanky-1429882)). V pilotu jich vzniklo asi 2 800 (MZ, říjen 2026).
- Vláda schválila novelu zákona o elektronizaci ([MZ, 9. 11. 2026](https://mzd.gov.cz/?p=228600)). Zatím jde o návrh, ne o platné právo. Plán:

| Od kdy | Co se má stát povinné |
|---|---|
| 1. 7. 2027 | eŽádanky: zobrazovací, konziliární, fyzioterapie |
| 1. 1. 2028 | eŽádanky: laboratoř |
| 1. 1. 2029 | elektronická zdravotnická dokumentace |
| 26. 3. 2029 | standardizovaný pacientský souhrn |

- Pacient eŽádanku najde v aplikaci EZKarta nebo na ezdravi.gov.cz, případně dostane papír.

## 4. Čekací doby a zákonná dostupnost

Zdroj: [nařízení vlády 307/2012 Sb.](https://www.zakonyprolidi.cz/cs/2012-307) a [ZVZP § 40 odst. 3](https://www.zakonyprolidi.cz/cs/1997-48).
Podle e-Sbírky ([307/2012 Sb.](https://e-sbirka.gov.cz/sb/2012/307)) existuje k 14. 11. 2026 jediné znění, účinné od 1. 1. 2013 (typ „aktuální“). Totéž ukazuje [historie znění na zakonyprolidi.cz](https://www.zakonyprolidi.cz/cs/2012-307/historie): verze 1, žádné novely.

### Co zákon slibuje
Pojišťovna musí svým pojištěncům zajistit místní i časovou dostupnost hrazené péče (ZVZP § 40 odst. 3, § 46 odst. 1). Pojištěnec má na to právo (§ 11 odst. 1 písm. c).

**Místní dostupnost** = nejdelší dojezdová doba z místa bydliště (příloha 1). Ambulantní péče:

| Dojezd | Obory (výběr) |
|---|---|
| 35 min | praktik, pediatr, gynekolog, zubař, lékárna |
| 45 min | interna, chirurgie, urologie, oční, ORL, ortopedie, rehabilitace, diabetologie, RTG/UZ |
| 60 min | kardiologie, gastroenterologie, pneumologie, revmatologie, psychiatrie, psychologie, kožní, hematologie |
| 90 min | alergologie, endokrinologie, nefrologie, onkologie, dětská neurologie, CT |
| 120 min | MRI, nukleární medicína, neurochirurgie, genetika, geriatrie, infekční lékařství |

**Časová dostupnost** platí jen pro plánované hrazené služby uvedené v příloze 2 (maximální lhůta):

| Služba | Nejdéle |
|---|---|
| Náhrada kyčle nebo kolene | 52 týdnů |
| Operace katarakty | 30 týdnů |
| Denzitometrie | 16 týdnů |
| Echokardiografie | 10 týdnů |
| Artroskopie, angiografie nekoronárních tepen | 8 týdnů |
| Mamografie | 6 týdnů |
| Magnetická rezonance | 5 týdnů |
| Endoskopie, zahájení biologické léčby RS | 4 týdny |
| Počítačová tomografie | 3 týdny |
| RTG (skiagrafie) a ultrazvuk | 2 týdny |

Důležité podmínky (§ 2 nařízení):
- Lhůtu stanoví lékař, který službu indikoval. Nesmí překročit tabulku.
- Lhůta začíná den po indikaci, ale jen když lékař zapsal potřebu služby a lhůtu do dokumentace.
- Pro akutní a neodkladnou péči tato pravidla neplatí. Tam platí „lhůta odpovídající naléhavosti“.
- Za nesplnění se nepočítá, když pojišťovna termín v lhůtě zajistí a vy si sami vyberete jiné, pozdější pracoviště.
- Můj výklad: na první návštěvu u většiny specialistů žádná zákonná lhůta neexistuje. Zákon určuje lhůty jen pro služby v tabulce.

### Co dělat, když termín není
1. Ověřit, že lékař indikaci a lhůtu zapsal do dokumentace. Požádejte o to.
2. Zkusit 2–3 další smluvní pracoviště (seznam má pojišťovna). Nečekat bez vyhledání.
3. Požádat pojišťovnu o zajištění termínu. Funguje telefon, pobočka, aplikace nebo písemná žádost:
   - VZP: pobočka nebo 952 222 222, info@vzp.cz, datová schránka i48ae3q ([VZP](https://www.vzp.cz/o-nas/tiskove-centrum/otazky-tydne/dostupnost-zdravotnich-sluzeb)).
   - OZP: přes aplikaci VITAKARTA (novinky.cz, 28. 3. 2023).
   - Jinde: klientský portál, pobočka nebo e-mail. Žádný jednotný oficiální formulář pro čekací doby jsem nenašel.
4. Do žádosti napsat: jméno a číslo pojištěnce, výkon a diagnózu, datum indikace, lhůtu z dokumentace, kdo vás odmítl a kdy (jména, data, telefony). Žádost si uložit.
5. Nepomůže-li to, podat stížnost pojišťovně písemně (ZVZP § 11 odst. 2) a dát vědět ministerstvu zdravotnictví (podatelna@mzd.gov.cz, +420 224 971 111). MZ uvádí, že pojišťovna, která péči nezajistí, se dopouští správního deliktu, pokuta až 10 mil. Kč ([MZ](https://mzd.gov.cz/dostupnost-hrazenych-sluzeb/), stránka naposledy 5. 8. 2020).
6. Pro praktika, pediatra a zubaře použít formulář nedostupnapece.mzcr.cz (viz část 2).
7. Za „rychlejší termín“ neplatit u hrazené péče. Placený přednostní termín při tvrzení „nemáme kapacitu“ je důvod ke stížnosti u pojišťovny.
8. Pro plánovanou péči, kterou v ČR nezajistí ve lhůtě, existuje možnost péče v EU na povolení pojišťovny (ZVZP § 14). Je to složitější, vyžaduje předchozí souhlas.

## 5. Konzultace a druhý názor, svobodná volba

- Pacient má právo vyžádat si konzultační službu u jiného poskytovatele nebo zdravotníka (ZZS § 28 odst. 3 písm. c). Nevztahuje se na neodkladnou péči a na lidi ve vazbě či výkonu trestu.
- Konzultační služba = posouzení léčebného postupu, návrh jeho změny, nebo další konzultace pro vaše rozhodování (ZZS § 2 odst. 2 písm. b).
- Váš dosavadní lékař musí druhému zpřístupnit potřebné informace z dokumentace (§ 46 odst. 1 písm. d). Nesplnění je přestupek (§ 117).
- Svobodná volba lékaře a zařízení: § 28 odst. 3 písm. b ZZS a ZVZP § 11 odst. 1 písm. b.
- Kdo to platí: VZP uvádí, že konzultace dalším lékařem je hrazená u vybraných diagnóz a onemocnění. Nejčastěji onkologie, transplantace, amputace, endoprotézy, glaukom, RS, rekonstrukční operace srdce a cév ([VZP – Druhý názor](https://www.vzp.cz/o-nas/tiskove-centrum/otazky-tydne/druhy-nazor)). Jinak může být nutné platit sám. Přesný seznam diagnóz jsem neviděl.
- Přineste dokumentaci: nálezy, propouštěcí zprávy, plán léčby. Opakují se jen chybějící nebo staré testy.

## 6. Poplatky, samoplátce, nadstandard

| Situace | Pravidlo | Zdroj |
|---|---|---|
| Hrazená péče | Lékař nesmí chtít žádnou platbu | ZVZP § 11 odst. 1 písm. d; ZZS § 48 odst. 6 písm. a |
| Pohotovost (LPS, zubní pohotovost) | Regulační poplatek 90 Kč. Neplatí děti v ústavní výchově, lidé v hmotné nouzi, pobytové sociální služby, a když pohotovost shledá nutnost hospitalizace | ZVZP § 16a |
| Doplatky za léky | Roční limit: 5 000 Kč, děti do 18 a lidé 65+ 1 000 Kč, lidé 70+ 500 Kč. Nad limit proplatí pojišťovna | ZVZP § 16b |
| Registrace | Žádný poplatek za přijetí (od 1. 1. 2026) | ZZS § 48 odst. 6 písm. c |
| Služba mimo pojištění (nadstandard, kosmetika, potvrzení) | Dovoleno. Cena musí být předem oznámena a v ceníku, vystaví se účet | ZZS § 45 odst. 2 písm. a, b; § 48 odst. 6 písm. b |
| Podmínění péče nákupem nebo darem | Zakázáno | ZZS § 48 odst. 6 písm. c |

- Ceník nehrazených služeb musí být veřejně přístupný (v čekárně nebo na webu). Lékař nesmí chtít úhradu za službu, která v ceníku není (§ 48 odst. 6 písm. b).
- Pokuty (ZZS § 117 odst. 4, znění od 1. 1. 2026, [zakonyprolidi.cz](https://www.zakonyprolidi.cz/cs/2011-372)): za požadování úhrady za hrazenou péči až 1 000 000 Kč (odst. 2 písm. r), za podmínění přijetí nebo další péče platbou nebo nákupem až 300 000 Kč (odst. 3 písm. a, b), za požadování úhrady za nehrazenou službu mimo ceník až 100 000 Kč (odst. 2 písm. s), za neumístění ceníku nebo neinformování o ceně až 50 000 Kč (odst. 1 písm. o, p). Přestupek projednává správní orgán, který lékaři udělil oprávnění (§ 118), tedy obvykle krajský úřad nebo magistrát.
- Lékař smí odmítnout nehrazený úkon a přitom péči neodmítnout. Při odmítnutí nezbytné péče kvůli platbě si vyžádejte písemné zdůvodnění (§ 48 odst. 5) a obraťte se na pojišťovnu.
- Poplatek za nepřijití na termín: je to smluvní pokuta podle občanského zákoníku. Lékař ji smí chtít jen tehdy, když ji s pacientem předem dobrovolně a prokazatelně sjedná (podmínky a výše). Jednostranné oznámení na webu, v čekárně nebo v hromadné SMS nestačí a pacient pak nic neplatí. Péči podmínit zaplacením pokuty nesmí. Zdroj: [MZ, metodické stanovisko k platbám pacientů, část 3 (8. 10. 2026)](https://mzd.gov.cz/wp-content/uploads/2026/10/Metodicke_stanovisko_k_platbam_pacientu_kazuisticka_cast_3_Platba_za_nedodrzeni_terminu_objednani.pdf).
- Poplatek za přednostní termín: smluvní ani nesmluvní poskytovatel ho nesmí chtít. Poplatek za zpoplatněný způsob objednání (např. online systém) je u smluvního poskytovatele možný jen tehdy, když nabízí i bezplatné objednání (telefon, e-mail) na srovnatelně včasné termíny. Zdroj: [MZ, část 2](https://mzd.gov.cz/wp-content/uploads/2026/10/Metodicke_stanovisko_k_platbam_pacientu_kazuisticka_cast_2_Platby_za_objednani.pdf). Tato část stanoviska je podle MZ platná do 31. 12. 2026.
- Označení platby (např. „administrativní poplatek“) nic nemění. Rozhoduje, zda jím lékař podmiňuje péči (viz část 2).
- U potvrzení a posudků (nejsou hrazená péče) lékař podle ceníku účtovat smí.
- Kopie a výpisy dokumentace: viz `data-a-prava.md`.

## 7. Pohotovost (LPS) a eRecept

### Lékařská pohotovostní služba
- Od 1. 1. 2026 zajišťují pohotovosti pojišťovny, ne kraje (VZP, 18. 12. 2025: [Pravidla pro fungování pohotovostí od ledna 2026](https://www.vzp.cz/o-nas/aktuality/pravidla-pro-fungovani-pohotovosti-od-ledna-2026)).
- Minimum pro dospělé i děti: ve všední dny aspoň 3 hodiny v kuse mezi 16:00 a 22:00. O víkendech a svátcích aspoň 8 hodin v kuse včetně bloku 10:00–16:00.
- Zubní pohotovost: o víkendech a svátcích aspoň 4 hodiny v kuse mezi 7:00 a 15:00.
- Kde: dospělé hlavně příjmová oddělení nemocnic (asi 96), děti dětská oddělení nemocnic (asi 80–82), plus další místa. Seznam má každá pojišťovna na webu (VZP: pohotovosti.vzp.cz). Konkrétní adresy a hodiny se po reformě měnily. Vždy ověřit.
- Pohotovost je pro stavy, které nejde odložit do ordinace. Při ohrožení života volat 155 nebo 112.
- Neodkladnou péči nesmí odmítnout žádný lékař (ZZS § 48 odst. 3).

### eRecept a lékový záznam
- eRecept spravuje SÚKL. Pacient vidí své recepty a výdeje v aplikaci nebo na webu eRecept ([epreskripce.gov.cz/homepage/pacient](https://epreskripce.gov.cz/homepage/pacient/)).
- Lékový záznam ukazuje 5 let: název léku, dávku, lékaře, lékárnu, datum výdeje a očkování. Děti vidí rodič ([VZP – Přístup do lékového záznamu](https://www.vzp.cz/o-nas/tiskove-centrum/otazky-tydne/pristup-do-lekoveho-zaznamu)).
- V historii přístupů zjistíte, kdo do záznamu nahlížel. Přístup lékařů a lékárníků je výchozí, můžete mu v aplikaci odporovat nebo omezit na konkrétního lékaře.
- Lékárník při výdeji kontroluje, zda jste nedosáhli limitu doplatků (ZVZP § 16b odst. 6).
- Posledních 12 měsíců vydaných léků se promítá do tzv. emergentního záznamu ve sdíleném zdravotním záznamu (zákon 325/2021 § 34a).

## 8. Praktické tipy

- Objednávání: zavolat, napsat e-mail, použít webový rezervační systém ordinace nebo nemocnice. Některé ordinace používají komerční aplikace (např. Emmy). Je to volba ordinace. Zkontrolujte vždy, že jde o oficiální rezervaci a nic za ni neplatíte.
- Centrální rezervační systém pro obyčejné objednání k lékaři neexistuje. Ministerstvo plánuje rezervační nástroj do EZKarty pro prevenci a screening (viz nejisté).
- Při objednání řekněte: pojišťovnu, zda jste nový pacient, důvod, zda máte žádanku. Přineste průkaz pojištěnce nebo EZKartu s QR kódem a občanku.
- Přineste starší nálezy a seznam léků. Lékař má povinnost předat zprávu vašemu registrujícímu praktikovi (§ 45 odst. 2 písm. f).
- Po hospitalizaci chtějte propouštěcí zprávu. Obsah určuje vyhláška 444/2024 Sb. ([text](https://www.zakonyprolidi.cz/cs/2024-444)). Při propuštění vám nemocnice má vybavit léky na 3 dny (ZZS § 47 odst. 1 písm. f).
- Zeptejte se vždy: „Je to hrazené, nebo platím?“ a „Je cena v ceníku?“ Vyžádejte účet.
- Pokud někdo odmítá, zdůvodnění žádejte písemně (§ 48 odst. 5). Stížnost na poskytovatele podáte jemu. Musí ji vyřídit do 30 dnů (lze prodloužit o dalších 30). Nesouhlasíte-li, do 60 dnů od vyřízení ji podáte správnímu orgánu (ZZS § 93).
- Informace o EZKartě: info linka 1221 (po–pá 8:00–16:00), linka1221@mzd.gov.cz ([nzip.cz/ezkarta](https://www.nzip.cz/ezkarta)).
- Zdravotnická záchranná služba a rychlé stavy: 155 a 112.

## Nejisté / k ověření

- Přímý přístup ke specialistům: výslovné ustanovení „doporučení není potřeba“ nebo samostatné stanovisko MZ nebo pojišťovny jsem nenašel (zkoušel jsem zákony na zakonyprolidi.cz, odpovědi MZ na žádosti o informace 2022–2024, rozhovor MZ 2018, weby VZP). Opírám se o svobodnou volbu (ZZS § 28, ZVZP § 11) a o nepřímé vyjádření MZ z roku 2022. Zákonný základ pro ordinace, které doporučení vyžadují, jsem nenašel. Můj výklad (ne stanovisko): doporučení není zákonný důvod odmítnutí, ale zda to platí pro každý obor, jsem neověřil. Seznam výkonů s podmínkou doporučení nebo indikace jsem nepřečetl celý. Ověřte u pojišťovny.
- Zákonná lhůta na první návštěvu u specialisty: neexistuje podle mého výkladu přílohy 2. Není to oficiální stanovisko.
- Přesný poslední den podání přihlášky ke změně pojišťovny („3 měsíce před“): pojišťovny ho uvádějí jako konec března a září. Doslovné znění zákona to nerozhoduje jednoznačně.
- Oficiální jednotný postup „žádost o zajištění termínu“ u pojišťoven: nenašel jsem. Zkoušel jsem stránky VZP (Dostupnost zdravotních služeb, Otázky a odpovědi na poplatky, články o dostupnosti péče, kontakty): uvádějí jen zákonnou povinnost pojišťovny a obecné kontakty, žádný formulář ani postup. Popsaný postup je kombinace zákona, MZ a praxe z novinových článků 2023. Doba odpovědi pojišťovny není stanovena.
- Stránka MZ o dostupnosti byla naposledy aktualizována 5. 8. 2020. Pokuta „až 10 mil. Kč“ pochází z ní.
- Hrazení druhého názoru: VZP uvádí „vybrané diagnózy“. Seznam jsem neviděl a ostatní pojišťovny jsem neověřoval.
- Poplatky za nepřijití na termín a za objednání: stanovisko MZ z 8. 10. 2026 jsem přečetl (viz část 6). Část o objednání je platná jen do 31. 12. 2026, u ostatních částí platnost neuvedena. Pozici ČLK k poplatku za nepřijití jsem nenašel. Stanovisko míří na smluvní poskytovatele a vykládá zákon pro správní orgány, soud může rozhodnout jinak.
- Počet pohotovostí a jejich hodiny: čísla se mezi zdroji liší (80 vs. 82 dětských). Konkrétní místa ověřit na webu pojišťovny.
- Název a funkce aplikací pojišťoven: název ČPZP „Zdraví v mobilu“ potvrzuje [web ČPZP](https://www.cpzp.cz/clanek/3344-0-Elektronicka-prepazka-portal-CPZP.html). Ten výpis péče v Elektronické přepážce výslovně nezmiňuje. RBP my213 a VoZP „Zdraví na klik“ jsem na oficiálních stránkách neověřoval, část pochází z přehledu skrblik.cz.
- Rozsah „1 200 léků u praktika od 30. 6. 2026“: zdroje se liší v rozsahu a nesledoval jsem finální právní předpis.
- Centrální rezervační systém: podle odpovědi MZ z roku 2025 (zprostředkovaně) se obecné objednávání nechystá. Aktuální stav k listopadu 2026 nepotvrzen.
