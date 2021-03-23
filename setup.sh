#!/bin/bash

# Directory the script is located in
scriptDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
errorCodes=0

# If .bashrc file exists, delete it. Then stow the custom one
if [[ -f ~/.bashrc ]] && ! [[ -L ~/.bashrc ]]; then
    echo ".bashrc file already exists. Removing..."
    rm -f ~/.bashrc
fi

stow --no-folding -v -d "$scriptDir" bash
errorCodes+=$?

# If bspwmrc file exists, delete it. Then stow the custom one
if [[ -f ~/.config/bspwm/bspwmrc ]] && ! [[ -L ~/.config/bspwm/bspwmrc ]]; then
    echo "BSPWM config already exists. Removing..."
    rm -rf ~/.config/bspwm
fi

stow --no-folding -v -d "$scriptDir" bspwm
errorCodes+=$?

# If sxhkdrc file exists, delete it and stow the custom one
if [[ -f ~/.config/sxhkd/sxhkdrc ]] && ! [[ -L ~/.config/sxhkd/sxhkdrc ]]; then
    echo "SXHKD config already exists. Removing..."
    rm -rf ~/.config/sxhkd
fi

stow --no-folding -v -d "$scriptDir" sxhkd
errorCodes+=$?

# Check if termite file exists, delete it and stow the custom one
if [[ -f ~/.config/termite/config ]] && ! [[ -L ~/.config/termite/config ]]; then
    echo "Termite config already exists. Removing..."
    rm -rf ~/.config/termite
fi

stow --no-folding -v -d "$scriptDir" termite
errorCodes+=$?

# If polybar config file exists, delete it and stow the custom one
if [[ -f ~/.config/polybar/config ]] && ! [[ -L ~/.config/polybar/config ]]; then
    echo "Polybar config already exists. Removing..."
    rm -rf ~/.config/polybar
fi

stow --no-folding -v -d "$scriptDir" polybar
errorCodes+=$?

# If rofi config file exists, delete it and stow the custom one
if [[ -f ~/.config/rofi/config ]] && ! [[ -L ~/.config/rofi/config ]]; then
    echo "Rofi config already exists. Removing..."
    rm -rf ~/.config/rofi
fi

stow --no-folding -v -d "$scriptDir" rofi
errorCodes+=$?

# If imwheel config file exists, delete it and stow the custom one
if [[ -f ~/.imwheelrc ]] && ! [[ -L ~/.imwheelrc ]]; then
    echo "IMWheel config already exists. Removing..."
    rm -rf ~/.imwheelrc
fi

stow --no-folding -v -d "$scriptDir" imwheel
errorCodes+=$?

# If picom config file exists, delete it and stow the custom one
if [[ -f ~/.config/picom/picom.conf ]] && ! [[ -L ~/.config/picom/picom.conf ]]; then
    echo "picom config already exists. Removing..."
    rm -rf ~/.config/picom/picom.conf
fi

stow --no-folding -v -d "$scriptDir" picom
errorCodes+=$?

# If kitty config file exists, delete it and stow the custom one
if [[ -f ~/.config/kitty/kitty.conf ]] && ! [[ -L ~/.config/kitty/kitty.conf ]]; then
    echo "kitty config already exists. Removing..."
    rm -rf ~/.config/kitty/kitty.conf
fi

stow --no-folding -v -d "$scriptDir" kitty
errorCodes+=$?

# Check for errors
if [[ "$errorCodes" -eq 0 ]]; then
    echo "Everything was executed correctly."
else
    echo "Something went wrong, please check."
fi
