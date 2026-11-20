# Zdravotní složka — struktura a sběr dat

Plně pro Claude Code (data na disku). V claude.ai buď uživatel nahrává soubory do konverzace nebo projektu,
nebo má složku na Google Drivu a čte ji konektorem (zápis jen do `inbox/`, viz níž).

## Struktura

```
zdravi/
├── ZDRAVI.md              mapa složky a pravidla (ze šablony), čte se na začátku
├── TODO.md                jediná fronta úkolů pro celou rodinu
├── kontakty.md            lékaři a pracoviště, u každého údaje zdroj
├── inbox/                 poznámky z mobilu čekající na zařazení (jen u cloudové složky, viz níž)
├── <Jméno>/               jedna složka na osobu
│   ├── profil.md          jedna stránka: diagnózy, léky, alergie, operace, rodinná anamnéza, prevence
│   ├── leky.md            léky a doplňky: co, dávka, od kdy, proč; vysazené s datem
│   ├── ockovani.md        očkování s datem a zdrojem
│   ├── originaly/         zprávy a výsledky tak, jak přišly (PDF, fotky) — AI je NEMĚNÍ
│   │   ├── laborator/
│   │   ├── zpravy/
│   │   └── genetika/
│   ├── data/
│   │   ├── laborator.csv  všechny laboratorní hodnoty v čase (přepis z originálů)
│   │   └── <zdroj>/<YYYY-MM-DD>/  exporty z hodinek a aplikací, každý export nová složka
│   └── analyzy/           rozbory, YYYY-MM-DD_tema.md
└── archiv/                co už neplatí (nic se nemaže)
```

Když už má uživatel vlastní strukturu, **nepřestavuj ji**. Popiš ji do jeho `ZDRAVI.md` nebo `CLAUDE.md`
a drž se jí.

### Pravidla

- **`originaly/` patří uživateli.** AI tam soubory jen čte. Nový dokument tam uloží uživatel, nebo AI
  na jeho výslovný pokyn (třeba stažené PDF), a beze změny obsahu.
- Název originálu: `YYYY-MM-DD_kdo-co.pdf` (datum vyšetření, ne stažení), např. `2026-03-12_synlab-krev.pdf`.
- Úkoly jen do `TODO.md`, s osobou `[Jméno]` a odkazem na analýzu. Analýzy obsahují rozbor, ne seznamy úkolů.
- Data absolutně (12. 3. 2026). Nic se nemaže, neplatné do `archiv/` nebo přeškrtnout s datem.
- Rodná čísla, čísla pojištěnců a hesla do souborů nepiš (kromě originálů, kde už jsou).

### `laborator.csv`

```
datum,parametr,hodnota,jednotka,ref_od,ref_do,laborator,nalacno,zdroj,poznamka
2026-03-12,Cholesterol celkový,5.4,mmol/l,2.9,5.0,Synlab,ano,originaly/laborator/2026-03-12_synlab-krev.pdf,
```

- `parametr` piš tak, jak je ve zprávě, ale u stejného parametru vždy stejně (sjednoť při přepisu).
- `hodnota` číslem s tečkou. Hodnoty typu „< 0,5“ do `hodnota` jako `<0.5`.
- Meze z téže zprávy, ne z internetu.
- Po přepisu zkontroluj proti originálu každý řádek. Překlep v hodnotě je horší než chybějící hodnota.
- Trend: seřaď podle parametru a data, upozorni, když se měnila laboratoř nebo jednotka.

## Kde data sehnat

Podrobnosti a nároky v `data-a-prava.md`. Kontrolní seznam pro první naplnění:

| Zdroj | Co tam je | Jak |
|---|---|---|
| EZKarta / Portál pacienta | vybrané laboratorní hodnoty, očkování, eRecepty, zprávy | přihlášení eObčankou nebo bankovní identitou |
| Klientský portál pojišťovny | **výpis z osobního účtu**: návštěvy, zařízení, výkony a uhrazené léky za roky zpětně (rozsah se liší podle pojišťovny, diagnózy obvykle ne; viz `data-a-prava.md`) | portál pojišťovny |
| Portál laboratoře | výsledky odběrů (i těch přes lékaře, když laboratoř posílá i pacientovi) | účet u laboratoře |
| Objednávací aplikace ordinace | zprávy a výsledky, které lékař poslal | podle ordinace |
| Praktik, specialisté, nemocnice | výpis nebo kopie dokumentace | žádost (`data-a-prava.md`, šablona) |
| Očkovací průkaz | očkování | fotka → `ockovani.md` |
| Rodina | rodinná anamnéza (kdo, co, v kolika letech) | rozhovor, zapsat do `profil.md` |
| Hodinky, aplikace | spánek, tep, aktivita | export → `data/<zdroj>/<datum>/` |

Rodinná anamnéza je nejlevnější a často nejcennější údaj. U každé nemoci zapiš **příbuzného, nemoc
a věk při zjištění** (věk rozhoduje, viz `uvazovani.md` §3).

## Kde bude složka

Skill místo neurčuje, pomůže ho vybrat. Ukaž uživateli tuhle tabulku a doporučení, rozhodnutí je jeho.

| Kde | Pro | Proti |
|---|---|---|
| **Synchronizovaný cloud** (Google Drive pro počítač, iCloud Drive, OneDrive) | záloha, sdílení s partnerem, u Google Drivu i práce z mobilu přes claude.ai | data leží u cloudové firmy; riziko sdílení omylem; konflikty při souběžných úpravách |
| **Jen lokálně** na počítači | nejvyšší soukromí | bez zálohy hrozí ztráta; nesdílí se; z mobilu nedostupné |
| **Šifrovaný trezor v cloudu** (např. Cryptomator) | záloha i soukromí | složitější; mobil ani claude.ai na data nedosáhnou |

**Doporučení:** pro rodinnou složku synchronizovaný cloud, nejlépe **Google Drive**. Nejdůležitější je, aby se
data neztratila a aby k nim měl přístup i partner. Google Drive navíc jako jediný z nich umí claude.ai
(konektor Google Drive) i na mobilu. Kdo chce maximum soukromí: lokální složka a pravidelná záloha
(Time Machine, Historie souborů ve Windows).

Kde cloudové složky na počítači obvykle jsou (ověř výpisem, liší se podle verze a jazyka):

| Služba | Mac | Windows |
|---|---|---|
| Google Drive pro počítač | `~/Library/CloudStorage/GoogleDrive-<e-mail>/Můj disk` (nebo `My Drive`) | písmeno disku, obvykle `G:\Můj disk` |
| iCloud Drive | `~/Library/Mobile Documents/com~apple~CloudDocs` | `%USERPROFILE%\iCloudDrive` |
| OneDrive | `~/Library/CloudStorage/OneDrive-<název>` | `%USERPROFILE%\OneDrive` |

**Sdílení:** sdílej jen zdravotní složku, ne celý disk. Zkontroluj, že není sdílená „komukoli s odkazem“.

### Zápis z mobilu (jen Google Drive)

Konektor Google Drive v claude.ai umí soubory číst a zakládat nové, ale existující soubor umí jen přepsat
celý. Přepis podle kopie staré pár minut by potichu smazal změny, které mezitím udělal počítač. Proto:

- **na mobilu se jen čte a do `inbox/` se zakládají nové soubory** (jedna poznámka = jeden soubor),
- **na počítači** (Claude Code) se inbox zpracuje: poznámka se zařadí na správné místo a smaže.

Pravidla a formát poznámky jsou v `inbox/README.md` ze šablony.

## Cesta ke složce a příkaz `doktor`

Cesta ke zdravotní složce se ukládá do `~/.config/doktor/slozka` (jeden řádek). Díky tomu skill složku
najde, i když ho uživatel spustí odjinud.

Volitelně příkaz **`doktor`**: v terminálu otevře Clauda rovnou ve zdravotní složce, na Macu i ikonou
na ploše. Postup instalace, stavu a odinstalace je v `reference/prikaz.md`.

## Založení

1. Zeptej se, pro koho složka je (jména členů rodiny) a **kde bude** (sekce „Kde bude složka“).
2. Zkopíruj `SKILL_DIR/template/` do zvolené složky, složku `Osoba/` jednou pro každého člena a přejmenuj ji.
   Soubory `README.md` v prázdných podsložkách šablony jen popisují, co do složky patří; klidně je nech.
   `inbox/` ponech jen u složky na Google Drivu.
3. Ulož cestu do `~/.config/doktor/slozka` a nabídni příkaz `doktor` (`reference/prikaz.md`).
4. Doplň `ZDRAVI.md` (kdo je kdo, pojišťovna, registrující lékaři) a vyplň `profil.md` rozhovorem.
5. Projděte spolu kontrolní seznam „Kde data sehnat“ a do `TODO.md` zapiš, co se má stáhnout nebo vyžádat.
6. Když uživatel nahraje originály, přepiš laboratorní výsledky do `laborator.csv` (založ ho s hlavičkou z oddílu `laborator.csv` výš) a udělej první přehled:
   co je v pořádku, co sledovat, jaká prevence chybí (`prevence.md`).
