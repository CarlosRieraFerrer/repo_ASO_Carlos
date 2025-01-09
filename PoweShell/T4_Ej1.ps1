Write-Host "Por favor, introduce tu nombre:"
$nombre = Read-Host

Write-Host "Por favor introduce un numero:"
$numero = Read-Host

for ($i = 1; $i -le [int]$numero; $i++) {
    Write-Host $nombre
    }