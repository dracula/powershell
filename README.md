# Dracula for the PowerShell Console

> A dark theme for the Windows 10 Console, supports both [PowerShell](https://github.com/PowerShell/PowerShell) and [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe).

![Screenshot](https://raw.githubusercontent.com/waf/dracula-cmd/master/images/screenshot.png)

<p align="center"><i>git integration is available only in powershell via posh-git</i></p>

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
1. Include [this powershell configuration](https://github.com/dracula/powershell/blob/master/theme/dracula-prompt-configuration.ps1) in your PowerShell `$profile` file.<sup>[1](#whats-the-powershell-profile-file "What's the PowerShell `$profile` file?")</sup>

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

## Frequently Asked Questions

<dl>
    <dt>What's the PowerShell <code>$profile</code> file?</dt>
    <dd>This is a PowerShell file that's run when a PowerShell session is started, similar to a <code>.bashrc</code>. Type <code>$profile</code> in a PowerShell window to see the path. See https://ss64.com/ps/syntax-profile.html for more detail.</dd>
    <dt>After applying the theme, other consoles don't always have the right colors.</dt>
    <dd>There are two possible reasons for this:
        <ol>
            <li>Step 3 from the theme installation was not followed; it's a requirement for the way that the windows console properties save settings.</li>
            <li>The shortcut used to apply the theme was different from shortcut used to open the console.
                <ul>
                    <li>The windows console stores its font / color settings in per-shortcut. You can see / delete the special cases in the registry. Go to <code>\HKEY_CURRENT_USER\Console\</code> and delete the subkeys so the default values in the <code>Console</code> key are used.</li>
                </ul>
            </li>
        </ol>
    </dd>
    <dt>What's that crazy cmd.exe prompt string?</dt>
    <dd>The cmd.exe prompt value can be broken down into the following [ANSI escape sequences](http://ascii-table.com/ansi-escape-sequences.php)
        <ul>
            <li><code>E[1;32;40m</code> - normal text with a green foreground and black background</li>
            <li><code>→ </code> - unicode arrow and space</li>
            <li><code>$E[1;36;40m</code> - normal text with a cyan foreground and black background</li>
            <li><code>$p</code> - current drive and path. See <code>prompt /?</code> output for additional values</li>
            <li><code>$E[1;35;40m</code> - normal text with a magenta foreground and black background</li>
            <li><code>› </code> - unicode chevron and space</li>
            <li><code>$E[1;37;40m</code> - normal text with a white foreground and black background</li>
        </ul>
    </dd>
</dl>

## Uninstallation

1. Uninstall the colors:
    - Download and unzip [the same archive](https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/ColorTool.zip) you used to install the theme.
    - Run uninstall.cmd
1. Uninstall the prompts:
    - PowerShell prompt: remove the configuration from your powershell `$profile`.
    - CMD.exe prompt: delete the `prompt` environment variable.

## Team

This theme is maintained by the following person(s) and a bunch of [awesome contributors](https://github.com/dracula/powershell/graphs/contributors).

[![Will Fuqua](https://avatars3.githubusercontent.com/u/97195?v=3&s=70)](https://github.com/waf) | [![Zeno Rocha](https://avatars2.githubusercontent.com/u/398893?v=3&s=70)](https://github.com/zenorocha)
--- | ---
[Will Fuqua](https://github.com/waf) | [Zeno Rocha](https://github.com/zenorocha)

#### Contributors

[Tim Kilåker](https://github.com/TKilaker) - Contributed an updated release of ColorTool.exe.

## License

[MIT License](./LICENSE)
