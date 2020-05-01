# DEPENDENCIES

# Base xorg
DEPS += xorg-minimal xinit xorg-fonts font-ibm-plex-otf xsetroot libglvnd

# WM
DEPS += spectrwm slock

# Utilities
DEPS += cmake make autoconf automake gcc pkg-config unzip

# dmenu
DEPS += fontconfig-devel libX11-devel libXft-devel libXinerama-devel

# st
DEPS += fish-shell

# Neovim
DEPS += gperf LuaJIT libluv-devel msgpack-devel libutf8proc-devel lua51-lpeg lua51-mpack libtool gettext
DEPS += libtermkey-devel libuv-devel libvterm-devel msgpack-devel LuaJIT-devel libluv-devel

# Misc/tools
DEPS += alsa-utils bat fzf stow git firefox playerctl fd ripgrep

all: deps
	make -C apps/dmenu
	make -C apps/st
	make CMAKE_BUILD_TYPE=RelWithDebInfo -C apps/neovim

deps:
	xbps-install -Sy $(DEPS)

install: deps
	make -C apps/dmenu install
	make -C apps/st install
	make -C apps/neovim install

clean:
	make -C apps/dmenu clean
	make -C apps/st clean
	make -C apps/neovim clean

