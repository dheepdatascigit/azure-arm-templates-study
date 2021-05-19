# creating storage and script to add file in my MNP Azure tenancy
# subscription id: 07209e8b-f025-434a-98ee-5e5430ed50b1


# Connect-AzAccount
$mnpSubcriptionId = '07209e8b-f025-434a-98ee-5e5430ed50b1'
Set-AzContext -SubscriptionId $mnpSubcriptionId

$resourceGroupName = 'learndeploymentscript_exercise_1'
New-AzResourceGroup -Location eastus -Name $resourceGroupName

$templateFile = 'main.bicep'
$today = Get-Date -Format 'dd-MM-yyyy'
$deploymentName = "deploymentscript-$today"
New-AzResourceGroupDeployment `
  -ResourceGroupName $resourceGroupName `
  -Name $deploymentName `
  -TemplateFile $templateFile

