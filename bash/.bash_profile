# .profile is sourced after /etc/profile, and /etc/profile.d/*

#########################################################################
# Generic env
#########################################################################
ENCODING="en_CA.UTF-8"
export LANG="$ENCODING"
export LC_CTYPE="$ENCODING"
export LC_NUMERIC="$ENCODING"
export LC_TIME="$ENCODING"
export LC_COLLATE="$ENCODING"
export LC_MONETARY="$ENCODING"
export LC_MESSAGES="$ENCODING"
export LC_PAPER="$ENCODING"
export LC_NAME="$ENCODING"
export LC_ADDRESS="$ENCODING"
export LC_TELEPHONE="$ENCODING"
export LC_MEASUREMENT="$ENCODING"
export LC_IDENTIFICATION="$ENCODING"

# BIN?
if [ -d "$HOME/.local/bin" ]; then PATH="$HOME/.local/bin:$PATH"; fi
# SCRIPTS?
if [ -d "$HOME/.local/scripts" ] ; then PATH="$HOME/.local/scripts:$PATH"; fi
# NIX?
if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then . "$HOME/.nix-profile/etc/profile.d/nix.sh"; fi
# RUST?
if [ -d "$HOME/.cargo/bin" ]; then PATH="$HOME/.cargo/bin:$PATH"; fi

# XDG
# analog: /etc
export XDG_CONFIG_HOME="$HOME/.config"
# analog: /var/cache
export XDG_CACHE_HOME="$HOME/.cache"
# analog: /usr/share
export XDG_DATA_HOME="$HOME/.local/share"
# analog: /var/lib user-specific state files
export XDG_STATE_HOME="$HOME/.local/state"
# analog: PATH
export XDG_DATA_DIRS="${XDG_DATA_HOME}:/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="${XDG_CONFIG_HOME}:/etc/xdg"
# automatically set by pam_systemd to /run/user/$UID
# initd, openrc, runit, s6, 66, dinit might need manual setting
# XDG_RUNTIME_DIR=...

export STOW_DIR="$HOME/.local/stuff"
####################################################################

export TERMINAL='alacritty'
export EDITOR='nvim'
export VISUAL='bat -p'
export BROWSER='librewolf'
export MANPAGER="sh -c 'col -bx | batcat -l man -p'"

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export CLICOLOR=1

# general aliases
if [ -e "$HOME/.aliases" ]; then
	. "$HOME/.aliases"
fi

# other stuff
#export PATH="/opt/lua-language-server/bin:$PATH"
## added luajit
#export LUA_PATH='/usr/share/luajit-2.1.0-beta3/?.lua;/usr/share/lua/5.1/?.lua;/usr/share/lua/5.1/?/init.lua;/usr/lib/lua/5.1/?.lua;/usr/lib/lua/5.1/?/init.lua;./?.lua;./?/init.lua;/home/kraven/.luarocks/share/lua/5.1/?.lua;/home/kraven/.luarocks/share/lua/5.1/?/init.lua'
#export LUA_CPATH='/usr/lib/lua/5.1/?.so;/usr/lib/lua/5.1/loadall.so;./?.so;/home/kraven/.luarocks/lib/lua/5.1/?.so'
#export PATH='/home/kraven/.luarocks/bin:/opt/lua-language-server/bin:/home/kraven/.cargo/bin:/home/kraven/.local/scripts:/home/kraven/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'

export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"


