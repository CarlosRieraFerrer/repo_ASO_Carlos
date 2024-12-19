$nombreUsuario = $env:USERNAME
$directorioTrabajo = $PWD.Path
$nombreDominio = $env:USERDOMAIN
$nombreEquipo = $env:COMPUTERNAME

write-Output "Hola $nombreUsuario"
write-Output "Tu directorio de trabajo es $directorioTrabajo"
Write-Output "perteneces al dominio $nombreDominio"
Write-Output "Tu equipo se llama $nombreEquipo"
