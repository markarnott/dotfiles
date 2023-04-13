<# Load the contents of a .env file into environment variables. #>
Function Set-DotEnv {
    param([string]$Path = ".", [switch]$ScriptVars)

    Push-Location $Path

    Get-Content .env | ForEach-Object {
        $name, $value = $_.split('=')
        if ([string]::IsNullOrWhiteSpace($name) -or $name.Contains('#')) {
            continue
        }
        # are we setting script variables or environment variables
        if ($ScriptVars) {
            Set-Variable -Name $name -Value $value -Scope Script
        } else {
            Set-Content env:\$name $value
        }
    }
    Pop-Location
}