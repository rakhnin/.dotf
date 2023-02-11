#!/bin/sh
xautolock -time 20 -locker slock &
xrdb ~/.Xresources
xcompmgr -c &
dwmblocks &
# feh --bg-fill --no-fehbg ~/Pictures/james-webb-tarantula-nebula.jpg
dwm-mgr desktop bg &
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
exec dwm
