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

Expand-Archive -Path .\FiraCode.zip -DestinationPath .\FiraCode

# install the .ttf files by double-clicking them

Pop-Location

