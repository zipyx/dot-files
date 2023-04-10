#!/bin/sh

# Start Programs
if [-d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && "$f"
	done
	unset f
fi

# Set Screen Resolution (This resolution is for wide curved monitor)
# Comment the below line to allow dwm to find appropriate size
xrandr --output DP-1 --mode 5120x1440 &

# Compositor
picom -f &

# Wallpaper
nitrogen --restore &

# Window Manager Status Bar [Right Corner]
dwmblocks &

# Icons tests
xset +fp /usr/share/fonts/nerd-fonts-git &
xset fp rehash &

# Create Loop
while true; do
	dwm > /dev/null 2>&1
done

# Execute DWM
exec dwm
