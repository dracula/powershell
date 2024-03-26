### [PowerShell Console](https://github.com/PowerShell/PowerShell)

A dark theme for the Windows 10 Console, supports both PowerShell and cmd.exe.

#### Theme Installation

There are 3 parts to configure; all of them are optional:

<details><summary><strong>Powershell and CMD colors</strong></summary>
<p>

1. Install the prerequisites:
    - PSReadLine 2.0 or later. It's installed by default in Windows 10, but you'll most likely [need to upgrade it](https://github.com/lzybkr/PSReadLine#user-content-upgrading). You can verify your PSReadLine version by running `(Get-Module PSReadLine).Version.Major`
    - Install git integration (posh-git) with `Install-Module -Name posh-git -AllowPrerelease -Force` . If you don't have an `-AllowPrerelease` flag, upgrade PowerShellGet with `Install-Module -Name PowerShellGet -Force` first. If that still doesn't work, see [this reported fix](https://github.com/dracula/powershell/issues/32#issuecomment-678836529) (thanks @LukeSavefrogs!).
1. Double-Click the [console_colors_dracula.reg](console_colors_dracula.reg) and confirm.
1. Include [this powershell configuration](https://github.com/dracula/powershell/blob/master/theme/dracula-prompt-configuration.ps1) in your PowerShell `$profile` file.<sup>[1](https://github.com/dracula/powershell#user-content-profile-explanation)</sup>
1. Right-click on the window titlebar and choose `Properties`, then on the `Font` tab choose Consolas. Click `OK` to save.

</p>
</details>

<details><summary><strong>CMD.exe Prompt</strong></summary>
<p>

Set the environment variable `prompt` to [the value in this file](https://raw.githubusercontent.com/dracula/powershell/master/CommandPrompt.txt). These crazy strings are called [ANSI Escape Sequences](http://ascii-table.com/ansi-escape-sequences.php).

</p>
</details>

<details><summary><strong>Windows Titlebar Color</strong></summary>
<p>

In Windows 10, the titlebar color can be set system-wide in Settings → Personalization → Colors → Custom color → More → #262835.

</p>
</details>

#### Questions?

See our [FAQ section](https://github.com/dracula/powershell#frequently-asked-questions) for answers, or [open an issue](https://github.com/dracula/powershell/issues) for help.
