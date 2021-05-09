$templateFile=".\JSON\maintemplate.json"
$today=Get-Date -Format "dd-MM-yyyy"
$DeploymentName="DeployLocalTemplate-"+"$today"

New-AzResourceGroupDeployment `
-Name $DeploymentName `
-TemplateFile $templateFile