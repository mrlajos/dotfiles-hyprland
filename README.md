# Hyprland Dotfiles


These are my personal dotfiles and Hyprland configs. They include everything required after a minimal Arch Linux install, but they can be used on other distros as well.

The setup is clean, minimal and focuses on a simple workflow.

**Description:**

- Minimal design, easy to reuse on a new system
- [Hyprland](https://hypr.land/) + Wayland focused
- Terminal: [kitty](https://sw.kovidgoyal.net/kitty/overview/)
- Clock: opens google calendar in your browser
- Network icon: opens [nmtui](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/networking_guide/sec-configuring_ip_networking_with_nmtui)
- CPU, Memory icons: opens [htop](https://www.baeldung.com/linux/htop-color-interpretation) ordered by cpu or mem
- Arch icon: Opens wofi menu with application search
- Power icon: Opens wofi menu (Power off, Reboot, Lock)
- Many config uses jetbrains mono font: [ttf-jetbrains-mono](https://www.jetbrains.com/lp/mono/)
- Install [nwg-look](https://github.com/nwg-piotr/nwg-look) to set your theme. (no themes included, the default is gtk light or dark)

After downloaded the repo to your ~/dotfiles with: `git clone https://github.com/mrlajos/dotfiles-hyprland.git ~/dotfiles`
use "restore-dotfiles.sh" to copy the files to their locations. When finished restart hyprland.
If you modify config files and wish to push it to github use "collect-dotfiles.sh" to copy all config files to ~/dotfiles.

## Preview

![Hyprland desktop](screenshot/screenshot.png)

