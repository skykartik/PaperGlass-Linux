# PaperGlass for Linux - Privacy Policy and Terms

Version 2.0 - published by skykartik

PaperGlass makes your screen look like e-ink paper. It is designed to work entirely on your own computer.

## What PaperGlass does not do

- It does not connect to the internet. It has no accounts, no analytics, no telemetry and no ads.
- It does not collect, upload or share any information about you or your computer.
- It does not capture, record or read what is on your screen. It only changes how colours are displayed and draws a
  transparent layer (grain, lamp glow) on top.
- It does not log your keystrokes. On Hyprland your shortcuts are key binds handled by the compositor; PaperGlass is
  only told which of them was pressed.

## What is stored on your computer

- Your preferences (looks, sliders, schedule, shortcuts, sound options, and the app names you add to the exceptions
  list) are saved in `~/.config/paperglass/settings.json`.
- Small helper files are kept in `~/.cache/paperglass`: the generated screen shader, the sound files and one icon.
- While PaperGlass runs, a private control socket lives in `$XDG_RUNTIME_DIR` so that `paperglass ctl` can reach it.
  It is only reachable by your own user.
- To apply app exceptions, PaperGlass asks your compositor (`hyprctl`) or X server (`xprop`) which window is in front.
  This happens only on your computer, is not stored, and is not sent anywhere.

## Startup

PaperGlass starts at login only if you ask it to (Settings > Start when I log in). This adds one file,
`~/.config/autostart/paperglass.desktop`, which you can turn off in Settings or delete at any time.

## Removing PaperGlass

Uninstall the package (`sudo pacman -R paperglass`) or run `./uninstall.sh`. Quitting or removing PaperGlass
returns your display to normal. To delete your data, remove `~/.config/paperglass` and `~/.cache/paperglass`.

## Questions

Open an issue at https://github.com/skykartik/PaperGlass-Linux/issues.

## Changes to this policy

If a future version changes how your information is handled, this document will be updated.

## Terms of use

PaperGlass is provided "as is", without warranty of any kind. You use it at your own risk. It is not a medical
product and does not treat or prevent any eye or health condition. Take regular breaks from screens.
