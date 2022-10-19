# Dotfiles
Dotfiles for linux

## Dependencies
Component | Package
-- | --
Window manager | [bspwm](https://github.com/baskerville/bspwm)
Compositor | [picom](https://github.com/yshui/picom)
Application Launcher | [rofi](https://github.com/davatorium/rofi)
Terminal Emulator | [kitty](https://sw.kovidgoyal.net/kitty/)
Shell | [fish](https://fishshell.com/)/bash
Text editor | [neovim](https://neovim.io/)
File manager | [ranger](https://github.com/ranger/ranger)
Widgets | [eww](https://github.com/elkowar/eww)
Notification manager | [dunst](https://github.com/dunst-project/dunst)
Symbolic link manager | stow

## Change directory into home
```sh
cd ~
```

## Clone Repository
```sh
git clone https://github.com/manankarnik/.dotfiles
```

## Change directory into .dotfiles
```sh
cd .dotfiles
```

## Exclude files/directories from linking (Optional)
Add the files/directories to [.stow-local-ignore](.stow-local-ignore)


## Link files
```sh
stow .
```
