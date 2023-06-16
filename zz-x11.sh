#!/bin/sh

# use X11 for everything
export EGL_PLATFORM=x11
export DISPLAY=:0
export XDG_SESSION_TYPE=x11
export GDK_GL=gles

# set some scaling for apps to have them more usable on small screens
export GDK_SCALE=2
export QT_AUTO_SCREEN_SET_FACTOR=0
export QT_SCALE_FACTOR=2
export QT_FONT_DPI=96

# some gnome apps depend on these
export XDG_CURRENT_DESKTOP=GNOME
export XDG_MENU_PREFIX="gnome-"
export XDG_SESSION_CLASS="user"

# We're not using wayland so these should be unset
unset QT_QPA_PLATFORM
unset MOZ_ENABLE_WAYLAND
