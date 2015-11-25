# wmrc

A simple WM powered by wmutils, written in bash.

## Installation

A simple, automated method of installation will be added later (Void template, CRUX port, Arch PKGBUILD), but not yet. Hold on.

Note that this expects that you run `startx` from a tty, not use a login manager (e.g. `gdm`, `sddm`, etc). 

First off,  you need to compile/install the following:

* wmutils/libwm
* wmutils/core
* wmutils/opt
* sxhkd
* bash
* dmenu
* Any virtual terminal (suckless `st` is used by default)

Highly recommended:

* lemonbar - required for bar
* dash - insanely fast posix-compliant shell. symlink to /bin/sh for best performance in most scripts
* mpd - `bar`'s music controls and nowplaying use it. you can remove it from the bar script, however
* hsetroot - wallpaper
* candy font - used in `bar` and sxhkd configs, change if you don't want it
* compton - tearing protection and shadows and such
* dunst - notification daemon

If you don't already have them, copy `sxhkdrc.default` to `~/.config/sxhkd/sxhkdrc`, and copy `xinitrc.default` to `~/.xinitrc`.

Uncomment the features you would like in `.xinitrc`.

Throw all the scripts somewhere in your PATH. Enjoy.

## TODO

* Add a more easy way to configure it and its variables
* User guide, good documentation
* Add more layouts to dytyl
* Make cw work for floating layouts with wchg
* More complex group status indicator in lemonbar rather than just `mgfw -g $(pfw)`
* Void Linux template and potentially Arch Linux PKGBUILD
* Makefile
* Allow for overrides of windows to keep them floating

# Known issues

* Windows suddenly jump around sometimes in tiled layouts
* Please report any other issues! 

# Pull requests

If you want to help, please do!
