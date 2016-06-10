
To remap the caplock key on Raspberry Pi add these lines to the .bashrc file

xmodmap -e 'clear lock'
xmodmap -e 'keycode 66=Escape'

