# List COM ports (plug the board in first, then run again to see the new port).
Get-CimInstance Win32_PnPEntity |
    Where-Object { $_.Name -match 'COM\d+' } |
    Select-Object Name, DeviceID |
    Format-Table -AutoSize
