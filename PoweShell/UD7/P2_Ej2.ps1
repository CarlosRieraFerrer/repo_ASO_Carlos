
$csvDepartamentos = "C:\Users\Administrador\Downloads\departamentos.csv"
$csvEmpleados = "C:\Users\Administrador\Downloads\empleados.csv"


$empresaFolder = "C:\Empresa"


if (!(Test-Path $empresaFolder)) {
    New-Item -ItemType Directory -Path $empresaFolder
    Write-Host " Carpeta Empresa creada en $empresaFolder"
}


$acl = Get-Acl $empresaFolder

#$permisoTodos = @("Todos", "ReadAndExecute", "ContaninerInherit,ObjectInherit", "None", "Allow")
$ruleEveryone = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos", "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl.SetAccessRule($ruleEveryone)


Set-Acl -Path $empresaFolder -AclObject $acl


$departamentos = Import-Csv -Delimiter ";" -Path $csvDepartamentos
$empleados = Import-Csv -Delimiter ";" -Path $csvEmpleados


foreach ($departamento in $departamentos) {
    $deptName = $departamento.departamento
    $deptDesc = $departamento.descripcion
    $groupName = "GRP_$deptName"
    $folderPath = "$empresaFolder\$deptName"

    
    if (!(Get-ADGroup -Filter {Name -eq $groupName})) {
        New-ADGroup -Name $groupName -GroupScope Global -Description $deptDesc -Path "OU=$Deptname,OU=EMPRESA,DC=EMPRESA,DC=LOCAL"
        Write-Host " Grupo $groupName creado en AD con descripción: $deptDesc"
    }

  
    if (!(Test-Path $folderPath)) {
        New-Item -ItemType Directory -Path $folderPath
        Write-Host " Carpeta creada para $deptName"
    }

   
    $deptAcl = Get-Acl $folderPath

 
    $ruleAdmin = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit,ObjectInherit", "None", "Allow")
    $ruleGroup = New-Object System.Security.AccessControl.FileSystemAccessRule($groupName, "Modify", "ContainerInherit,ObjectInherit", "None", "Allow")
    $ruleRead = New-Object System.Security.AccessControl.FileSystemAccessRule("Todos", "ReadAndExecute", "ContainerInherit,ObjectInherit", "None", "Allow")


    $deptAcl.SetAccessRule($ruleAdmin)
    $deptAcl.SetAccessRule($ruleGroup)
    $deptAcl.SetAccessRule($ruleRead)

   
    Set-Acl -Path $folderPath -AclObject $deptAcl
}


foreach ($empleado in $empleados) {
    $nombre = $empleado.nombre
    $apellido = $empleado.apellido
    $departamento = $empleado.departamento
    $userName = "$nombre.$apellido"  
    $deptGroup = "GRP_$departamento"


    $adUser = Get-ADUser -Filter {SamAccountName -eq $userName}
    
    if ($adUser) {
      
        Add-ADGroupMember -Identity $deptGroup -Members $userName
        Write-Host " Usuario $userName agregado al grupo $deptGroup"
    } else {
        Write-Host " Usuario $userName no encontrado en AD, verifica el nombre."
    }
}

Write-Host " Configuración completada con éxito."







