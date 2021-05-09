$templateFile=".\JSON\linkedtemplate.json"
    $today=Get-Date -Format "dd-MM-yyyy"
    $DeploymentName="DeployLinkedTemplate-"+"$today"

    New-AzResourceGroupDeployment `
    -Name $DeploymentName `
    -TemplateFile $templateFile