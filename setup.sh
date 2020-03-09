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

# Stow the fonts
stow --no-folding -v -d "$scriptDir" fonts
errorCodes+=$?

# If bspwmrc file exists, delete it. Then stow the custom one
if [[ -f ~/.config/bspwm/bspwmrc ]] && ! [[ -L ~/.config/bspwm/bspwmrc ]]; then
    echo "BSPWM config already exists. Removing..."
    rm -f ~/.config/bspwm/bspwmrc
fi

stow --no-folding -v -d "$scriptDir" bspwm
errorCodes+=$?

# If sxhkdrc file exists, delete it and stow the custom one
if [[ -f ~/.config/sxhkd/sxhkdrc ]] && ! [[ -L ~/.config/sxhkd/sxhkdrc ]]; then
    echo "SXHKD config already exists. Removing..."
    rm -f ~/.config/sxhkd/sxhkdrc
fi

stow --no-folding -v -d "$scriptDir" sxhkd
errorCodes+=$?

# Check if termite file exists, delete it and stow the custom one
if [[ -f ~/.config/termite/config ]] && ! [[ -L ~/.config/termite/config ]]; then
    echo "Termite config already exists. Removing..."
    rm -f ~/.config/termite/config
fi

# If polybar config file exists, delete it and stow the custom one
if [[ -f ~/.config/polybar/config ]] && ! [[ -L ~/.config/polybar/config ]]; then
    echo "Polybar config already exists. Removing..."
    rm -f ~/.config/polybar/config
fi

stow --no-folding -v -d "$scriptDir" polybar
errorCodes+=$?

stow --no-folding -v -d "$scriptDir" termite
errorCodes+=$?

# Check for errors
if [[ "$errorCodes" -eq 0 ]]; then
    echo "Everything was executed correctly."
else
    echo "Something went wrong, please check."
fi
