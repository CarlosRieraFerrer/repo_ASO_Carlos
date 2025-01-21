Write-Host "Por favor, ingresa el primer número entero: "
$num1 = Read-Host

Write-Host "Por favor, ingresa el segundo número entero: "
$num2 = Read-Host


if ([int]::TryParse($num1, [ref]$null) -and [int]::TryParse($num2, [ref]$null)) {
    # Convertir a enteros
    $num1 = [int]$num1
    $num2 = [int]$num2


    if ($num1 -gt $num2) {
        Write-Host "El primer número ($num1) es mayor que el segundo número ($num2)."
    } elseif ($num1 -lt $num2) {
        Write-Host "El primer número ($num1) es menor que el segundo número ($num2)."
    } else {
        Write-Host "El primer número ($num1) es igual al segundo número ($num2)."
    }
} else {
    Write-Host "Entrada inválida. Por favor, ingresa números enteros válidos."
}
