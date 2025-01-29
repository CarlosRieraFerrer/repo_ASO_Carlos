Get-SmbShare | Where-Object { $_.Special -eq $false }
New-Item -Path "C:\ASO" -ItemType Directory
New-SmbShare -Name "aso" -Path "C:\ASO" -FullAccess "Usuarios"
Revoke-SmbShareAccess -Name "aso" -AccountName Everyone -Force
Grant-SmbShareAccess -Name "aso" -AccountName "profesores" -AccessRight Full -Force
Grant-SmbShareAccess -Name "aso" -AccountName "alumnos" -AccessRight Read -Force
Get-SmbShareAccess -Name "aso"