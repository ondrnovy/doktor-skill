# Příkaz `doktor`

Volitelný příkaz: v terminálu (a na Macu ikonou na ploše) otevře Clauda rovnou ve zdravotní složce.
Jen v Claude Code. Před instalací řekni uživateli, co přesně se změní (soubory níž), a instaluj jen
na jeho souhlas. Soubory uprav svými nástroji pro práci se soubory, žádný skript se nespouští.

Funkce čte cestu ke složce až při spuštění z `~/.config/doktor/slozka`, takže po přesunu složky stačí
změnit ten jeden řádek.

## 1. Cesta ke složce

Do `~/.config/doktor/slozka` (Windows: `%USERPROFILE%\.config\doktor\slozka`) zapiš **jeden řádek**:
absolutní cestu ke zdravotní složce. Složku `~/.config/doktor/` založ, když chybí. Cestu předtím ověř
(složka existuje, je v ní `ZDRAVI.md`).

## 2. Mac a Linux

Soubor podle shellu (`echo $SHELL`): zsh → `~/.zshrc`; bash → na Macu `~/.bash_profile`, na Linuxu
`~/.bashrc`. Jiný shell: řekni uživateli, ať si funkci přidá sám podle bloku níž.

Když v souboru už blok mezi značkami `# >>> doktor >>>` a `# <<< doktor <<<` je, nahraď ho. Jinak ho
přidej na konec souboru, přesně takhle:

```sh
# >>> doktor >>>
doktor() {
  local d
  d="$(cat "$HOME/.config/doktor/slozka" 2>/dev/null)" || { echo "Zdravotní složka není nastavená." >&2; return 1; }
  cd "$d" && claude "$@"
}
# <<< doktor <<<
```

Platí v novém okně terminálu.

**Ikona na plochu (jen Mac, na přání):** soubor `~/Desktop/Doktor.command` s obsahem

```sh
#!/bin/bash
exec "${SHELL:-/bin/zsh}" -lic doktor
```

a nastav mu právo spuštění (`chmod +x ~/Desktop/Doktor.command`). Dvojklik otevře Terminál s Claudem
ve zdravotní složce. Při prvním spuštění se macOS může zeptat na povolení.

## 3. Windows (PowerShell)

Soubor je profil PowerShellu: cestu zjistíš příkazem `$PROFILE` v PowerShellu. Když neexistuje,
založ ho. Blok mezi značkami nahraď, nebo přidej na konec:

```powershell
# >>> doktor >>>
function doktor {
  $d = Get-Content (Join-Path $HOME '.config\doktor\slozka') -ErrorAction SilentlyContinue
  if (-not $d) { Write-Error 'Zdravotní složka není nastavená.'; return }
  Set-Location $d
  claude @args
}
# <<< doktor <<<
```

Profil se načte jen při zásadách spouštění `RemoteSigned` nebo volnějších (`Get-ExecutionPolicy`).
Když jsou `Restricted`, funguje jen zástupce na ploše. Změnu zásad
(`Set-ExecutionPolicy -Scope CurrentUser RemoteSigned`) dělej jen se souhlasem uživatele.

**Zástupce na plochu (na přání):** pravým tlačítkem na ploše → Nový → Zástupce, a jako umístění vlož:

```
powershell.exe -NoExit -NoProfile -ExecutionPolicy Bypass -Command "Set-Location -LiteralPath (Get-Content (Join-Path $HOME '.config\doktor\slozka')); claude"
```

Název `Doktor`. Windows verze zatím nebyla vyzkoušená na skutečných Windows; řekni to uživateli.

## Stav a odinstalace

- **Stav:** obsah `~/.config/doktor/slozka`, zda je blok se značkami v souboru shellu, zda je na ploše ikona.
- **Odinstalace:** smaž z daného souboru řádky od `# >>> doktor >>>` po `# <<< doktor <<<` včetně a ikonu
  nebo zástupce na ploše. Soubor `~/.config/doktor/slozka` nech, skill podle něj složku dál najde.
