#!/usr/bin/env bash
# Removes a per-user PaperGlass install made by install.sh. Your settings in ~/.config/paperglass are kept.
set -uo pipefail
prefix="${PREFIX:-$HOME/.local}"

"$prefix/bin/paperglass" ctl quit >/dev/null 2>&1 || true
"$prefix/bin/paperglass" --restore >/dev/null 2>&1 || true
rm -f  "$prefix/bin/paperglass" \
       "$prefix/share/applications/paperglass.desktop" \
       "$prefix/share/icons/hicolor/scalable/apps/paperglass.svg" \
       "${XDG_CONFIG_HOME:-$HOME/.config}/autostart/paperglass.desktop"
rm -rf "$prefix/lib/paperglass"
echo "PaperGlass removed. Settings are still in ${XDG_CONFIG_HOME:-$HOME/.config}/paperglass (delete that folder to remove them)."
