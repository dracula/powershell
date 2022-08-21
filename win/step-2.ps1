$colorToolFileName = "ColorTool.zip";
$colorToolUrl = "https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/$colorToolFileName";


Install-Module -Name posh-git -AllowPrerelease -Force

Invoke-WebRequest $colorToolUrl -OutFile "$PSScriptRoot\temp\${$colorToolFileName}";

Expand-Archive "$PSScriptRoot\temp\${$colorToolFileName}" -DestinationPath "$PSScriptRoot\temp"

cd "$PSScriptRoot\ColorTool"

. ./install.cmd

cd $PSScriptRoot

. ./theme/dracula-prompt-configuration.ps1

echo y | Remove-Item -Force "$PSScriptRoot\temp"