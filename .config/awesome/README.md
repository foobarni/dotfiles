# About

I currently run this configuration with `awesome-git v4.3`.
It is written in a modular way, taking structural inspiration from [Epsi's step-by-step guide](https://epsi-rns.github.io/desktop/2019/06/15/awesome-overview.html),
 [Gwynsaw](https://github.com/Gwynsav/modular-awm-default/tree/master) and [elenapan](https://github.com/elenapan/dotfiles/tree/master).
My aim was to keep the code easier to maintain, and leave untouched configurations away from my tinkering playground.

Most aspects are kept default, considering awesome's default behaviour.



---

# Install

You can install `awesome` from your distro's official repositories.

# Structure

The directory tree looks like this so far:

- `assets/`: for external resources;
- `keys/`: modifiers, mouse button, global- and client specific bindings;
- `main/`: functional configurations I rarely touch, and user-specific things;
- `ui-elements/`: menu, titlebar, wibar, theme, etc.
- `widgets/`: consider thes the "modules" folder

# Theme

I am using the built-in `gtk theme`, found in `/usr/share/awesome/themes/gtk/theme.lua`. This theme follows your system's GTK theme.

---

# Features