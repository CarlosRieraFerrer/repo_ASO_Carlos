$departamentosCsv = "C:\Users\Administrador\Downloads\departamentos.csv"
$empleadosCsv = "C:\Users\Administrador\Downloads\empleados.csv"

#Contraseña por defecto de los usuarios
$defaultPassword = "aso2025"

$departamentos = Import-Csv -Path $departamentosCsv -Delimiter ";"

foreach ($departamento in $departamentos) {
    $nombreDepto = $departamento.Departamento
    $descripccion = $departamento.Descripcion

$ouPath = "OU=$nombreDepto,OU=Empresas,DC=EMPRESA.LOCAL, 