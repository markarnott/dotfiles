# Setup volta and install nodejs
Push-Location "C:\Program Files\Volta"

volta setup

Pop-Location

volta install node@lts
 
Install-Module ZLocation

# Configure Starship

<# Install FiraCode nerd font
# This work-in-progress has a lot of bugs

$MyFontRelease = "v2.3.3/FiraCode.zip"
# https://www.programmingfonts.org/#firacode

New-Item NerdFont -ItemType Directory
Push-Location NerdFont

curl -o install.ps1 https://github.com/ryanoasis/nerd-fonts/blob/master/install.ps1
curl -o FiraCode.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/$MyFontRelease"

New-Item patched-fonts -ItemType Directory
Set-Location patched-fonts

& "C:\Program Files\7-Zip\7z.exe" -x ..\FiraCode.zip 

Pop-Location
#>
