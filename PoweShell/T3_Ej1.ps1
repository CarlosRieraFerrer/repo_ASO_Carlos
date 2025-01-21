Write-Host "Por favor, ingresa un número entero: "
$num = Read-Host

if ([int]::TryParse($num, [ref]$null)) {

    $num = [int]$num

 
    if ($num % 2 -eq 0) {
        Write-Host "El número $num es par."
    } else {
        Write-Host "El número $num es impar."
    }
} else {
    Write-Host "Entrada inválida. Por favor, ingresa un número entero."
}