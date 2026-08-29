# ❄️ dorrel-dotfiles

A curated collection of configuration files for a modern, aesthetic, and productive Linux environment. This setup is centered around **Wayland** and the **Hyprland** tiling compositor.

![Screenshot Placeholder](https://via.placeholder.com/800x450?text=Add+a+screenshot+of+your+desktop+here)

## 🚀 Core Components

### 🖥️ Window Management & UI
- **Compositor:** [Hyprland](https://hyprland.org/) - A dynamic tiling Wayland compositor.
- **Status Bar:** [Waybar](https://github.com/ko数列/waybar) - Highly customizable Wayland bar.
- **Notification Center:** [SwayNC](https://github.com/ErikReider/SwayNC) - A customizable notification center.
- **Application Launcher:** [Rofi](https://github.com/davatorium/rofi) - Window switcher, application launcher and dmenu replacement.
- **UI Theming:** [Kvantum](https://github.com/Kvantum/Kvantum) & `qt5ct`/`qt6ct` for consistent Qt application styling.

### 🐚 Shell & Terminal
- **Shell:** [Fish](https://fishshell.com/) - A smart and user-friendly command-line shell.
- **Prompt:** [Starship](https://starship.rs/) - The minimal, blazing-fast, and customizable prompt.
- **Terminal Emulator:** [Kitty](https://sw.kovidgoyal.net/kitty/) - A fast, feature-rich, GPU-based terminal emulator.

### 🛠️ Productivity & Tools
- **Text Editor:** [Neovim](https://neovim.io/) - Hybrid scripting extensibility.
- **File Manager:** [Yazi](https://github.com/sxyazi/yazi) - A blazing-fast terminal file manager.
- **System Monitor:** [btop](https://github.com/aristocratos/btop) - A colorful resource monitor.
- **Visualizer:** [cava](https://github.com/karls10/cava) - Console-based audio spectrum analyzer.
- **System Info:** [fastfetch](https://github.com/fastfetch-cli/fastfetch) - A fast and highly customizable system information tool.

### 🎵 Media & Others
- **Music Player:** [MPD](https://www.musicpd.org/) with [rmpc](https://github.com/rmpcc/rmpc) as the client.
- **Video Player:** [mpv](https://mpv.io/) - A free, open-source, and cross-platform media player.
- **Browser:** Mozilla Firefox (customized).

## 📂 Directory Structure

```text
.
├── .config/             # Application-specific configurations
│   ├── hypr/            # Hyprland compositor settings
│   ├── kitty/            # Terminal emulator settings
│   ├── nvim/            # Neovim configuration
│   ├── fish/            # Fish shell settings
│   └── ...              # Other app configs
├── .icons/              # Custom icons and themes
└── .Xresources          # Legacy X11 resources
```

## 🛠️ Installation

*Note: This repository is a collection of personal configurations. Please review the files before applying them to your system.*

To use these configurations, I use [GNU Stow](https://www.gnu.org/software/stow/) to manage symlinks efficiently.

```bash
# From the dotfiles directory
stow -t ~ .
```

## 👤 Author

**Dorrel Redmond**
