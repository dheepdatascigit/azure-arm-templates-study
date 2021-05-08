# Deploy the template
$templateFile = "azuredeploy.json"
$today=Get-Date -Format "dd-MM-yyyy"
$deploymentName="addfunction-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -storagePrefix mystrg01