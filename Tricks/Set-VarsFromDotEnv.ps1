<# Load the contents of a .env file into script or environment variables. #>
Function Set-DotEnv {
    param([string]$Path = ".\.env", [switch]$EnvVars)

    If(-not(Test-Path $Path)) {
        Write-Error "$Path does not exist"
        Exit
    }

    Get-Content $Path | ForEach-Object {
        $name, $value = $_.split('=')
        if ([string]::IsNullOrWhiteSpace($name) -or $name.Contains('#')) {
            continue
        }
        # are we setting script variables or environment variables
        if ($EnvVars) {
            Set-Content env:\$name $value
        } else {
            Set-Variable -Name $name -Value $value -Scope Script
        }
    }
}