# Dracula for [cmd](https://en.wikipedia.org/wiki/Cmd.exe)

> A dark theme for [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe).

![Screenshot](https://raw.githubusercontent.com/waf/dracula-cmd/master/images/screenshot.png)

## Install

1. [Download and extract](https://raw.githubusercontent.com/waf/dracula-cmd/master/dist/ColorTool.zip) or [compile](https://github.com/Microsoft/console/tree/master/tools/ColorTool) ColorTool (from Microsoft).
1. Run `ColorTool.exe -b Dracula.itermcolors`. The Dracula.itermcolors file is an iterm theme modified to work for cmd.exe.
1. Right-click on the cmd.exe titlebar and choose `Properties`, then on the `Font` tab choose Consolas. Click `OK` to save.
1. Optionally, set the `prompt` environment variable to `$E[0;32;40m→ $E[0;36;40m$p$E[0;35;40m› $E[0;38;40m` to get the prompt in the screenshot.
    - In the start menu, search for "Edit environment variables for your account."
    - Add a new user variable named `prompt` with the above value.

### Explanation of prompt environment variable

The prompt value above can be broken down into the following [ANSI escape sequences](http://ascii-table.com/ansi-escape-sequences.php):

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
