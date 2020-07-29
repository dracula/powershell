### [PowerShell Console](https://github.com/PowerShell/PowerShell)

A dark theme for the Windows 10 Console, supports both PowerShell and cmd.exe.

#### Theme Installation

## Installation

There are 4 parts to configure; all of them are optional:


<details><summary><strong>Colors Installation</strong></summary>
<p>

1. [Download and unzip](https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/ColorTool.zip) ColorTool. The [source code](https://github.com/Microsoft/Terminal/tree/master/src/tools/ColorTool) is available from Microsoft.
1. Open PowerShell, navigate to unzipped `ColorTool` directory, and run `install.cmd`.
1. Right-click on the window titlebar and choose `Properties`, then on the `Font` tab choose Consolas. Click `OK` to save.
    - Note that this step is required, even if your font is already set to Consolas, due to the way that the windows console saves its settings.

For cmd.exe support, perform the same steps above but in a cmd.exe window.

</p>
</details>

<details><summary><strong>PowerShell Prompt</strong></summary>
<p>

1. Install the 1.0 version of posh-git.
    - It's currently prerelease, so you'll need to install it with `Install-Module -Name posh-git -AllowPrerelease -Force`
    - If you don't have an `-AllowPrerelease` flag, upgrade PowerShellGet with `Install-Module -Name PowerShellGet -Force` first.
1. Ensure the latest version of PSReadLine (2.0 or later) is installed. It's installed by default in Windows 10, but you'll most likely [need to upgrade it](https://github.com/lzybkr/PSReadLine#user-content-upgrading).
    - You can verify that 2.0 was installed by running `(Get-Module PSReadLine).Version`. If the installation does not appear to work, please see [this issue in PSReadLine](https://github.com/PowerShell/PowerShellGet/issues/318#issuecomment-418605987)
1. Include [this powershell configuration](https://github.com/dracula/powershell/blob/master/theme/dracula-prompt-configuration.ps1) in your PowerShell `$profile` file.<sup>[1](https://github.com/dracula/powershell#user-content-profile-explanation)</sup>

</p>
</details>

<details><summary><strong>CMD.exe Prompt</strong></summary>
<p>

Set the environment variable `prompt` to `$E[1;32;40m→ $E[1;36;40m$p$E[1;35;40m› $E[1;37;40m`

</p>
</details>

<details><summary><strong>Windows Titlebar Color</strong></summary>
<p>

In Windows 10, the titlebar color can be set system-wide in Settings → Personalization → Colors → Custom color → More → #262835.

</p>
</details>

#### Questions?

See our [FAQ section](https://github.com/dracula/powershell#frequently-asked-questions) for answers, or [open an issue](https://github.com/dracula/powershell/issues) for help.
