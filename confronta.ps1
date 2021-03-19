<# 
   @Author: Francesco Pellegrino
   @Date: 19/03/2021
   
   Questo script , utilizzato in Windows PowerShell, confronta i "NOMI" di file di due directory ($Source e $Confr),
   e se presenti, sposta quelli contenuti in $Source nella cartella in $Source_Dest.
   Modificare i nomi delle cartelle tra " " nelle variabili $Source, $Confr, $Source_Dest.
   Per eseguire, aprire PowerShell ed eseguire con "./confronta.ps1"
#>

$Source = "X:\SOURCE"
$Confr = "X:\CONFR"
$Source_Dest = "X:\DEST"

Get-ChildItem $Source | ForEach-Object {

    $filename = $_.Name

    if (Test-Path "$Confr\$filename")
    {
        Move-Item $_.FullName -Destination $Source_Dest -Force
    }
}
