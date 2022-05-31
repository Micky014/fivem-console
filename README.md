# FiveM Console

## How to install?
1. Add the script to your server
2. Add `local Console = exports["fivem-console"]:Console()` to your server.lua
3. Ready!

## How to use?
| Function | Parameter(s) | Description |
| --- | --- | --- |
| `Console:Execute` | string | Execute a command as if it were a **CMD in Windows** or a **Terminal in Linux** |
| `Console:ScanDirectory` | string | Return all files and folders in a directory ***ONLY ON WINDOWS*** |
