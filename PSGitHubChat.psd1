@{
    RootModule        = 'PSGitHubChat.psm1'
    ModuleVersion     = '0.1.0'
    GUID              = '9f553dc1-8ca0-447c-852c-5af965103061'
    Author            = 'Douglas Finke'
    CompanyName       = 'Doug Finke'
    Copyright         = '© 2024 All rights reserved.'

    Description       = 'PowerShell module for interacting with GitHub AI models. Chat, compare, and explore various AI capabilities.'

    PowerShellVersion = '5.1'

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @()

    FunctionsToExport = @(
        'Get-GitHubModel'
        'Invoke-GitHubChat'
    )

    AliasesToExport   = @()

    PrivateData       = @{
        PSData = @{
            Category   = "PowerShell GitHub Chat Module"
            Tags       = @("PowerShell", "GitHub", "Chat")
            ProjectUri = "https://github.com/dfinke/PSGitHubChat"
            LicenseUri = "https://github.com/dfinke/PSGitHubChat/blob/main/LICENSE"
        }
    }
}