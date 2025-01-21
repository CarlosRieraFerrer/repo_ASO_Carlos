Write-Host "Por favor, ingresa tu edad: "
$edad = Read-Host

if ([int]::TryParse($edad, [ref]$null)) {
    # Convertir a entero
    $edad = [int]$edad

 
    if ($edad -ge 18) {
        Write-Host "Eres mayor de edad."
    } else {
        Write-Host "Eres menor de edad."
    }
} else {
    Write-Host "Entrada inválida. Por favor, ingresa un número entero para la edad."
}