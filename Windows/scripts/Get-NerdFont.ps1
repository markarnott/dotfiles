<# 
    .SYNOPSIS
    Get the FiraCode nerd font

    .DESCRIPTION
    github has an install.ps1 script, but File Explorer right-click => install works fine.
#>

# Different Nerd Fonts can be previewed here
# https://www.programmingfonts.org/#firacode

$MyFontRelease = "v3.0.2/FiraCode.zip"
New-Item NerdFont -ItemType Directory
Push-Location NerdFont

curl -o FiraCode.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/$MyFontRelease"

New-Item patched-fonts -ItemType Directory
Set-Location patched-fonts

& "C:\Program Files\7-Zip\7z.exe" x ..\FiraCode.zip 
Set-Location ..

#curl -o install.ps1 https://github.com/ryanoasis/nerd-fonts/blob/master/install.ps1
Pop-Location

