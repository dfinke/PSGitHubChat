Function Get-GitHubModel {
    $result = Invoke-RestMethod -Uri "https://models.inference.ai.azure.com/models" 
    $result.name
}
