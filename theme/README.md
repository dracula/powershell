https://devblogs.microsoft.com/commandline/understanding-windows-console-host-settings/

The `ScreenColors` property contains the Foreground Color in the last hex-nibble and the Background Color in the penultimate hex-nibble.

The `PopupColors` behave accordingly.

The `ColorTableXX` property has to be inserted in BGR order (instead of RGB), probably something with endianness.

By removing the default overrides for Powershell, we only need to set the colors in one place.
