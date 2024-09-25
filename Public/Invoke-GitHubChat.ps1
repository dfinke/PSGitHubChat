Class GitHubModelNames : System.Management.Automation.IValidateSetValuesGenerator {
    [String[]] GetValidValues() {
        return Get-GitHubModel
    }
}

function Invoke-GitHubChat {
    [CmdletBinding()]
    param(
        $prompt,
        [ValidateSet([GitHubModelNames])]
        [string]$model="gpt-4o-mini"
    )
    
    if(-not $env:GITHUB_TOKEN) {
        Write-Error "Please set GITHUB_TOKEN environment variable"
        return
    }

    $headers = @{
        "Content-Type"  = "application/json"
        "Authorization" = "Bearer $($env:GITHUB_TOKEN)"
    }

    $body = @{
        "messages" = @(@{"role" = "user"; "content" = $prompt })    
        "model"    = $model
    }

    $result = Invoke-RestMethod -Method Post -Uri "https://models.inference.ai.azure.com/chat/completions" -Headers $headers -Body ($body | ConvertTo-Json)

    $result.choices[0].message.content
}