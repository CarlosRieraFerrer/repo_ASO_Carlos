$departamentosCsv = "C:\users\Administrador\Downloads\departamentos.csv"
$empleadosCsv = "C:\Users\Administrador\Downloads\empleados.csv"

$defaultPassword = "aso2025"

$departamentos = Import-Csv -Path $departamentosCsv -Delimiter ";"
New-ADOrganizationalUnit -name "Empresa" -Path "DC=EMPRESA,DC=LOCAL"

foreach ($departamento in $departamentos) {
    $nombreDepto = $departamento.departamento
    $descripcion = $departamento.descripcion

$ouPath = "OU=Empresa,DC=EMPRESA,DC=LOCAL"
write-host $ouPath
New-ADOrganizationalUnit -Name $nombreDepto -Description $descripcion -Path $ouPath -ErrorAction SilentlyContinue
}
 
 $empleados = Import-Csv -Path $empleadosCsv -Delimiter ";"

 foreach ($empleado in $empleados) {
    $departamento = $empleado.Departamento
    $nombre = $empleado.Nombre
    $apellido = $empleado.Apellido

    $login = ($nombre + "." + $apellido).ToLower()

 $ouPath = "OU=$departamento,OU=Empresa,DC=EMPRESA,DC=LOCAL"

 New-ADUser -SamAccountName $login `
               -UserPrincipalName "$login@EMPRESA.LOCAL" `
               -Name "$nombre $apellido" `
               -GivenName $nombre `
               -Surname $apellido `
               -Path $ouPath `
               -AccountPassword (ConvertTo-SecureString $defaultPassword -AsPlainText -Force) `
               -Enabled $true `
               -ChangePasswordAtLogon $true `
}