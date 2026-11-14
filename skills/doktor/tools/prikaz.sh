#!/bin/bash
# Příkaz `doktor` (Mac, Linux): otevře Clauda ve zdravotní složce.
# Usage:
#   prikaz.sh nastav <slozka>     uloží cestu ke zdravotní složce
#   prikaz.sh instaluj [--plocha] přidá funkci doktor do ~/.zshrc / ~/.bashrc (a ikonu na plochu, jen Mac)
#   prikaz.sh odinstaluj          odebere funkci i ikonu (cesta ke složce zůstane uložená)
#   prikaz.sh stav                vypíše, co je nainstalované
set -eu

conf_dir="$HOME/.config/doktor"
conf="$conf_dir/slozka"
start="# >>> doktor >>>"
end="# <<< doktor <<<"
icon="$HOME/Desktop/Doktor.command"

rc_file() {
  case "$(basename "${SHELL:-/bin/zsh}")" in
    zsh) echo "$HOME/.zshrc" ;;
    bash) if [ "$(uname)" = Darwin ]; then echo "$HOME/.bash_profile"; else echo "$HOME/.bashrc"; fi ;;
    *) echo "" ;;
  esac
}

remove_block() {
  [ -f "$1" ] || return 0
  python3 -I - "$1" "$start" "$end" <<'EOF'
import sys
path, start, end = sys.argv[1:4]
lines = open(path).read().split("\n")
out, skip = [], False
for line in lines:
    if line == start: skip = True; continue
    if line == end: skip = False; continue
    if not skip: out.append(line)
open(path, "w").write("\n".join(out))
EOF
}

cmd="${1:-}"
case "$cmd" in
  nastav)
    dir="${2:?Chybí cesta ke složce}"
    [ -d "$dir" ] || { echo "Složka neexistuje: $dir" >&2; exit 2; }
    dir="$(cd "$dir" && pwd)"
    mkdir -p "$conf_dir"
    printf '%s\n' "$dir" > "$conf"
    echo "Uloženo: $dir"
    ;;
  instaluj)
    [ -s "$conf" ] || { echo "Nejdřív: prikaz.sh nastav <slozka>" >&2; exit 2; }
    rc="$(rc_file)"
    [ -n "$rc" ] || { echo "Neznámý shell ${SHELL:-}; přidej funkci ručně (viz README)." >&2; exit 3; }
    remove_block "$rc"
    cat >> "$rc" <<'EOF'
# >>> doktor >>>
doktor() {
  local d
  d="$(cat "$HOME/.config/doktor/slozka" 2>/dev/null)" || { echo "Zdravotní složka není nastavená." >&2; return 1; }
  cd "$d" && claude "$@"
}
# <<< doktor <<<
EOF
    echo "Funkce doktor přidána do $rc (platí v novém okně terminálu)."
    if [ "${2:-}" = "--plocha" ]; then
      if [ "$(uname)" = Darwin ]; then
        printf '#!/bin/bash\nexec "${SHELL:-/bin/zsh}" -lic doktor\n' > "$icon"
        chmod +x "$icon"
        echo "Ikona: $icon"
      else
        echo "Ikona na plochu je zatím jen pro Mac."
      fi
    fi
    ;;
  odinstaluj)
    rc="$(rc_file)"
    [ -n "$rc" ] && remove_block "$rc"
    rm -f "$icon"
    echo "Odebráno. Cesta ke složce zůstává v $conf."
    ;;
  stav)
    echo "Složka: $(cat "$conf" 2>/dev/null || echo 'nenastavena')"
    rc="$(rc_file)"
    if [ -n "$rc" ] && grep -qxF "$start" "$rc" 2>/dev/null; then echo "Příkaz: v $rc"; else echo "Příkaz: není"; fi
    if [ -f "$icon" ]; then echo "Ikona: $icon"; else echo "Ikona: není"; fi
    ;;
  *)
    sed -n '2,8p' "$0"; exit 1 ;;
esac
