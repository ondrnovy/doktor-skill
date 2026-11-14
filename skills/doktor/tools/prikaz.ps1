# Příkaz `doktor` (Windows, PowerShell): otevře Clauda ve zdravotní složce.
# Usage:
#   prikaz.ps1 nastav <slozka>      uloží cestu ke zdravotní složce
#   prikaz.ps1 instaluj [-Plocha]   přidá funkci doktor do profilu PowerShellu (a zástupce na plochu)
#   prikaz.ps1 odinstaluj           odebere funkci i zástupce (cesta ke složce zůstane uložená)
#   prikaz.ps1 stav                 vypíše, co je nainstalované
param(
  [Parameter(Position = 0)][string]$Akce,
  [Parameter(Position = 1)][string]$Slozka,
  [switch]$Plocha
)
$ErrorActionPreference = 'Stop'

$confDir = Join-Path $HOME '.config\doktor'
$conf = Join-Path $confDir 'slozka'
$start = '# >>> doktor >>>'
$end = '# <<< doktor <<<'
$icon = Join-Path ([Environment]::GetFolderPath('Desktop')) 'Doktor.lnk'

function Remove-Block {
  if (-not (Test-Path $PROFILE)) { return }
  $out = @(); $skip = $false
  foreach ($line in Get-Content $PROFILE) {
    if ($line -eq $start) { $skip = $true; continue }
    if ($line -eq $end) { $skip = $false; continue }
    if (-not $skip) { $out += $line }
  }
  Set-Content -Path $PROFILE -Value $out -Encoding UTF8
}

switch ($Akce) {
  'nastav' {
    if (-not $Slozka -or -not (Test-Path $Slozka -PathType Container)) { throw "Složka neexistuje: $Slozka" }
    $full = (Resolve-Path $Slozka).Path
    New-Item -ItemType Directory -Force -Path $confDir | Out-Null
    Set-Content -Path $conf -Value $full -Encoding UTF8
    "Uloženo: $full"
  }
  'instaluj' {
    if (-not (Test-Path $conf)) { throw 'Nejdřív: prikaz.ps1 nastav <slozka>' }
    New-Item -ItemType File -Force -Path $PROFILE -ErrorAction SilentlyContinue | Out-Null
    Remove-Block
    Add-Content -Path $PROFILE -Encoding UTF8 -Value @"
$start
function doktor {
  `$d = Get-Content (Join-Path `$HOME '.config\doktor\slozka') -ErrorAction SilentlyContinue
  if (-not `$d) { Write-Error 'Zdravotní složka není nastavená.'; return }
  Set-Location `$d
  claude @args
}
$end
"@
    "Funkce doktor přidána do $PROFILE (platí v novém okně PowerShellu)."
    if ($Plocha) {
      $sh = (New-Object -ComObject WScript.Shell).CreateShortcut($icon)
      $sh.TargetPath = 'powershell.exe'
      $sh.Arguments = '-NoExit -NoProfile -ExecutionPolicy Bypass -Command "Set-Location -LiteralPath (Get-Content (Join-Path $HOME ''.config\doktor\slozka'')); claude"'
      $sh.Save()
      "Zástupce: $icon"
    }
  }
  'odinstaluj' {
    Remove-Block
    Remove-Item -Force -ErrorAction SilentlyContinue $icon
    "Odebráno. Cesta ke složce zůstává v $conf."
  }
  'stav' {
    $s = if (Test-Path $conf) { Get-Content $conf } else { 'nenastavena' }
    "Složka: $s"
    $p = if ((Test-Path $PROFILE) -and (Select-String -Path $PROFILE -SimpleMatch $start -Quiet)) { "v $PROFILE" } else { 'není' }
    "Příkaz: $p"
    $i = if (Test-Path $icon) { $icon } else { 'není' }
    "Ikona: $i"
  }
  default { Get-Content $PSCommandPath -TotalCount 6 | Select-Object -Skip 1 }
}
