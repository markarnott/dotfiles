# Developer Tools Install Checklist

Are all these tools installed and working

## Tools on the Path

```powershell
git --version
code --version
wsl --version
volta --version
starship version
docker --version
```

## Manual install

```powershell
Install-Module ZLocation

volta install node@lts

"Invoke-Expression (&starship init powershell)" | out-file $profile
```

## Tools launched from Windows Shell

* NerdFont - FiraCode
* Notepad++
* Winmerge

## New Fun stuff

* deno
* nushell