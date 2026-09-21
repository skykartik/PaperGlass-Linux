#!/usr/bin/env bash
# Installs PaperGlass for the current user (no root needed). Works on any distro with Python and PySide6.
set -euo pipefail
here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
prefix="${PREFIX:-$HOME/.local}"

if ! python3 -c "import PySide6" 2>/dev/null; then
  echo "PySide6 was not found for python3."
  echo "  Arch Linux:    sudo pacman -S pyside6 qt6-wayland"
  echo "  Other distros: install your distro's PySide6 (Qt 6) package, or pip install PySide6"
  exit 1
fi

install -Dm755 "$here/bin/paperglass"            "$prefix/bin/paperglass"
install -Dm644 "$here/paperglass.py"             "$prefix/lib/paperglass/paperglass.py"
install -Dm644 "$here/assets/logo.svg"           "$prefix/share/icons/hicolor/scalable/apps/paperglass.svg"
install -Dm644 "$here/packaging/paperglass.desktop" "$prefix/share/applications/paperglass.desktop"
command -v update-desktop-database >/dev/null && update-desktop-database "$prefix/share/applications" 2>/dev/null || true

echo "PaperGlass installed to $prefix"
case ":$PATH:" in
  *":$prefix/bin:"*) ;;
  *) echo "Note: add $prefix/bin to your PATH so the 'paperglass' command is found." ;;
esac
echo "Start it from your app launcher, or run: paperglass"
