#!/bin/bash
# Zabalí skill do zipu pro nahrání do claude.ai (Přizpůsobit → Skills).
# Vznikne doktor-<verze>.zip a stejný doktor.zip pro stálý odkaz releases/latest/download/doktor.zip.
set -eu
root="$(cd "$(dirname "$0")/.." && pwd)"
ver="$(cat "$root/skills/doktor/VERZE")"
mkdir -p "$root/dist"
out="$root/dist/doktor-$ver.zip"
rm -f "$out"
(cd "$root/skills" && zip -qr "$out" doktor -x '*.DS_Store')
cp "$out" "$root/dist/doktor.zip"
echo "$out"
echo "$root/dist/doktor.zip"
