# Deploy the template
$templateFile = "azuredeploy.json"
$parameterFile="azuredeploy.parameters.dev.json"
$today=Get-Date -Format "dd-MM-yyyy"
$deploymentName="addParameterFile-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile