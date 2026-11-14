#!/bin/bash
# Zabalí skill do zipu pro nahrání do claude.ai (Nastavení → Skills).
set -eu
root="$(cd "$(dirname "$0")/.." && pwd)"
ver="$(cat "$root/skills/doktor/VERZE")"
mkdir -p "$root/dist"
out="$root/dist/doktor-$ver.zip"
rm -f "$out"
(cd "$root/skills" && zip -qr "$out" doktor -x '*.DS_Store')
echo "$out"
