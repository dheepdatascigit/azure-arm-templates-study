$parameters = @{vnetName = "VNet-001"; costCenterIO = "12345"; ownerName = "John Smith"}
$templateFile=".\JSON\maintemplate.json"
$TemplateParameterFile= ".\JSON\maintemplate.parameters.json"
$today=Get-Date -Format "dd-MM-yyyy"
$DeploymentName="DeployLocalTemplate-3-"+"$today"

New-AzResourceGroupDeployment `
-Name $DeploymentName `
-TemplateFile $templateFile `
-TemplateParameterFile $TemplateParameterFile

