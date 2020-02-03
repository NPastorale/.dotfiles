#!/bin/bash

# Directory the script is located in
scriptDir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# If .bashrc file exists, delete it. Then stow the custom one
if [[ -f ~/.bashrc ]] && ! [[ -L ~/.bashrc ]]; then
    echo ".bashrc file already exists. Removing..."
    rm -f ~/.bashrc
fi

stow --no-folding -vv -d "$scriptDir" bash

# Stow the fonts
stow --no-folding -vv -d "$scriptDir" fonts

# If bspwmrc file exists, delete it. Then stow the custom one
if [[ -f ~/.config/bspwm/bspwmrc ]] && ! [[ -L ~/.config/bspwm/bspwmrc ]]; then
    echo "BSPWM config already exists. Removing..."
    rm -f ~/.config/bspwm/bspwmrc
fi

stow --no-folding -vv -d "$scriptDir" bspwm

# If sxhkdrc file exists, delete it and stow the custom one
if [[ -f ~/.config/sxhkd/sxhkdrc ]] && ! [[ -L ~/.config/sxhkd/sxhkdrc ]]; then
    echo "SXHKD config already exists. Removing..."
    rm -f ~/.config/sxhkd/sxhkdrc
fi

stow --no-folding -vv -d "$scriptDir" sxhkd

# Check if termite file exists, delete it and stow the custom one
if [[ -f ~/.config/termite/config ]] && ! [[ -L ~/.config/termite/config ]]; then
    echo "Termite config already exists. Removing..."
    rm -f ~/.config/termite/config
fi

stow --no-folding -vv -d "$scriptDir" termite
