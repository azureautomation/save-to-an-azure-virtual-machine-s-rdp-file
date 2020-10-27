Save to an Azure Virtual Machine's RDP File
===========================================

            


 



This function provide downloading the Remote Desktop file of Virtual Machine on Azure


When you execute that function, its creates and saves Remote Desktop Files of Azure Virtual Machine to select path. SavePath parameter must be specified as mandatory

Optional Account detail can be added into the Remote Desktop File using Username Parameter



PowerShell
Edit|Remove
powershell
Save-AzureRDPFile -SavePath C:\AzureVMFolder

Save-AzureRDPFile -SavePath C:\AzureVMFolder -UserName adatum.com\Hasan.Gural

Save-AzureRDPFile -SavePath C:\AzureVMFolder 
 
Save-AzureRDPFile -SavePath C:\AzureVMFolder -UserName adatum.com\Hasan.Gural



 ![Image](https://github.com/azureautomation/save-to-an-azure-virtual-machine's-rdp-file/raw/master/save-azureremotedesktopfile.png) 

 

 

        
    
TechNet gallery is retiring! This script was migrated from TechNet script center to GitHub by Microsoft Azure Automation product group. All the Script Center fields like Rating, RatingCount and DownloadCount have been carried over to Github as-is for the migrated scripts only. Note : The Script Center fields will not be applicable for the new repositories created in Github & hence those fields will not show up for new Github repositories.
