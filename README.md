# Dracula for the Windows 10 Console

> A dark theme for the Windows 10 Console, supports both [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe) and [PowerShell](https://github.com/PowerShell/PowerShell)

![Screenshot](https://raw.githubusercontent.com/waf/dracula-cmd/master/images/screenshot.png)

<p align="center"><i>git integration is available only in powershell via posh-git</i></p>

## Theme Installation

1. [Download and extract](https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/ColorTool.zip) ColorTool. The [source code](https://github.com/Microsoft/console/tree/master/tools/ColorTool) is available from Microsoft.
1. Open cmd.exe and run `ColorTool.exe -b Dracula.itermcolors`. The Dracula.itermcolors file is an iterm theme modified to work for the windows console.
1. Right-click on the window titlebar and choose `Properties`, then on the `Font` tab choose Consolas. Click `OK` to save.
    - Note that this step is required, even if your font is already set to Consolas, due to the way that the windows console saves its settings.

Perform the same steps above, but in a powershell window, for powershell support.

## cmd.exe prompt

1. After installing the theme, set the `prompt` environment variable to `$E[0;32;40m→ $E[0;36;40m$p$E[0;35;40m› $E[0;38;40m` to get the prompt in the screenshot.
    - In the start menu, search for "Edit environment variables for your account."
    - Add a new user variable named `prompt` with the above value.

## PowerShell prompt

1. Install the 1.0 version of posh-git.
    - It's currently prerelease, so you'll need to install it with `Install-Module -Name posh-git -AllowPrerelease -Force`
    - If you don't have an `-AllowPrerelease` flag, upgrade PowerShellGet with `Install-Module -Name PowerShellGet -Force` first.
1. Ensure the latest version of PSReadLine is installed. It's installed by default in Windows 10, but you'll most likely [need to upgrade it](https://github.com/lzybkr/PSReadLine#user-content-upgrading).
1. Append the following lines to your [PowerShell $profile file](https://ss64.com/ps/syntax-profile.html):

```powershell
# Dracula PSReadline Configuration
Set-PSReadlineOption -TokenKind Parameter -ForegroundColor Gray
Set-PSReadlineOption -TokenKind Command -ForegroundColor Green
# Dracula Prompt Configuration
$GitPromptSettings.DefaultPromptPrefix.Text = "$([char]0x2192) " # arrow unicode symbol
$GitPromptSettings.DefaultPromptPrefix.ForegroundColor = [ConsoleColor]::Green
$GitPromptSettings.DefaultPromptPath.ForegroundColor =[ConsoleColor]::Cyan
$GitPromptSettings.DefaultPromptSuffix.Text = "$([char]0x203A) " # chevron unicode symbol
$GitPromptSettings.DefaultPromptSuffix.ForegroundColor = [ConsoleColor]::Magenta
# Dracula Git Status Configuration
$GitPromptSettings.BeforeStatus.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.BranchColor.ForegroundColor = [ConsoleColor]::Blue
$GitPromptSettings.AfterStatus.ForegroundColor = [ConsoleColor]::Blue
```

## Frequently Asked Questions

### After applying the theme, other consoles don't always have the right colors.

There are two possible reasons for this:

1. Step 3 from the theme installation was not followed; it's a requirement for the way that the windows console properties save settings.
1. The shortcut used to apply the theme was different from shortcut used to open the console.
    - The windows console stores its font / color settings in per-shortcut. You can see / delete the special cases in the registry, in `\HKEY_CURRENT_USER\Console\` so the defaults are used.

### What's that crazy cmd.exe prompt string?

The cmd.exe prompt value can be broken down into the following [ANSI escape sequences](http://ascii-table.com/ansi-escape-sequences.php):

- `$E[0;32;40m` - normal text with a green foreground and black background
- `→ ` - unicode arrow and space
- `$E[0;36;40m` - normal text with a cyan foreground and black background
- `$p` - current drive and path. See `prompt /?` output for additional values
- `$E[0;35;40m` - normal text with a magenta foreground and black background
- `› ` - unicode chevron and space
- `$E[0;38;40m` - normal text with a default foreground and black background

## Team

This theme is maintained by the following person(s) and a bunch of [awesome contributors](https://github.com/dracula/cmd/graphs/contributors).

[![Will Fuqua](https://avatars3.githubusercontent.com/u/97195?v=3&s=70)](https://github.com/waf) | [![Zeno Rocha](https://avatars2.githubusercontent.com/u/398893?v=3&s=70)](https://github.com/zenorocha)
--- | ---
[Will Fuqua](https://github.com/waf) | [Zeno Rocha](https://github.com/zenorocha)

## License

[MIT License](./LICENSE)
