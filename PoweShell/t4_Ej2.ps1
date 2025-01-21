Write-Host "Por favor introduce tu edad:"
$edad = Read-Host 

Write-Host "Has cumplido los siguientes años:"
    for ($i = 1; $i -le [int]$edad; $i++) {
        Write-Host $i
        }