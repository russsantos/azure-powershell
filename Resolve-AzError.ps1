

function Show-Result
{
    param(
        [string]$Result
    )
    $lines = $Result -split "`n"

    $insideCodeBlock = $false
    
    foreach ($line in $lines) {
        if ($line.StartsWith("``````")) {
            $insideCodeBlock = -not $insideCodeBlock
            Write-Host $line -ForegroundColor Green
        }
        else {
            if ($insideCodeBlock) {
                Write-Host $line -ForegroundColor Green
            } else {
                Write-Host $line
            }
        }
    }
}
function Resolve-AzErrorDemo
{
    param(
    )
    $BaseUrl = "http://127.0.0.1:8000/chat/complete"
    $LastError = Get-Error

    if ($PSVersionTable.PSEdition -eq "Desktop")
    {
        $Shell = "Windows PowerShell"
    }
    else
    {
        $Shell = "PowerShell Core"
    }
    $Shell = $Shell + " " + $PSVersionTable.PSVersion.ToString()
    $loadedModules = @()
    foreach ($Module in $(Get-Module)) {
        $loadedModules += "$($Module.Name) $($Module.Version)"
    }

    $Body = @{
        "isFirstMessage" = $true;
        "chatConversationInitInfo" = @{
            "os" = $PSVersionTable.OS
            "isErrorHandling" = $true
            "domain" = "Azure PowerShell"
            "shell" = $Shell
            "loadedModules" = $loadedModules
            "loadedDlls" = @()
            "command" = $LastError.InvocationInfo.Line
            "commandWrongPosition" = $LastError.InvocationInfo.PositionMessage
            "error" = $LastError.Exception.Message
            "stackTrace" = $LastError.Exception.StackTrace
        }
    }
    $Response = Invoke-WebRequest -Uri $BaseUrl -Method Post -Body ($Body | ConvertTo-Json -Compress) -ContentType "application/json"
    Show-Result ($Response.Content | ConvertFrom-Json).choices[0].message.content
}