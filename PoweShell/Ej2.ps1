Write-Host "Introduce el primer número:"
$num1 = Read-Host

Write-Host "Introduce el segundo número:"
$num2 = Read-Host

$num1 = [float]$num1
$num2 = [float]$num2

$suma = $num1 + $num2
$resta = $num1 - $num2
$multiplicacion = $num1 * $num2
if ($num2 -ne 0) {
    $division = $num1 / $num2
    $resto = $num1 % $num2
} else {
    $division = "No se puede dividir por cero"
    $resto = "No se puede calcular el resto con divisor cero"
}

Write-Output "La suma de $num1 y $num2 es: $suma"
Write-Output "La resta de $num1 y $num2 es: $resta"
Write-Output "La multiplicación de $num1 y $num2 es: $multiplicacion"
Write-Output "La división de $num1 entre $num2 es: $division"
Write-Output "El resto de $num1 entre $num2 es: $resto"