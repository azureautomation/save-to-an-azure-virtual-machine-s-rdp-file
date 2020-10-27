Function Save-AzureRDPFile{
<#
.Synopsis
   This function provide downloading the Remote Desktop file of Virtual Machine on Azure
.DESCRIPTION
   When you execute that function, it provide create the Remote Desktop File  of Virtual Machine on Azure in what you select path.
   SavePath parameter must be specified as mandatory.
   Optional Account can add into Remote Desktop file with Username Parameter
.EXAMPLE
   Save-AzureRDPFile -SavePath C:\AzureVMFolder
   Save-AzureRDPFile -SavePath C:\AzureVMFolder -UserName adatum.com\Hasan.Gural
#>
Param(
      [Parameter(Mandatory=$True)]
      [string[]]$SavePath,
      [string]$UserName
 )
$VerbosePreference = "Continue"
$TestPath = Test-Path -Path $SavePath -ErrorAction SilentlyContinue
if($TestPath -eq $true){
   Write-Host "The Directory way found. - We're good to go." -ForegroundColor Green
   $AllVM = Get-AzureVM
   foreach($vm in $AllVM){
      $Name = $vm.Name
      try{
      Write-Verbose "Remote Desktop File creating... Virtual Machine name is $Name"
      $SaveFile = Get-AzureRemoteDesktopFile -ServiceName $vm.ServiceName -Name $vm.Name -LocalPath "$SavePath\$Name.rdp" -ErrorAction Stop -ErrorVariable Error 
      Write-Verbose "Client VM RDP file ($Name.rdp) downloaded to $SavePath"
      Add-Content $SavePath\$name.rdp -Value username:s:$Username}
      catch{
             Write-Host "Remote Desktop File could not be created"}
      }
    Write-Host " "
    Write-Host "All remote desktop files created. Saved path:>>$SavePath" -ForegroundColor Green
 }
else {
        Write-Host " "
        Write-Host "The Directory path not found" -ForegroundColor Red -BackgroundColor White
        Write-Host " "}
}