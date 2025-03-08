a NixOS by slowpuke for slowpuke

# WORK IN PROGRESS, MAYBE ONE DAY IT WILL BE FINISHED
- [X] bspwm configured
- [X] bspwm floating windows moving and resizing
- [ ] bsp layout setup with shortcuts, see if there is perhaps a polybar script for it, if there isnt i might write a simple one
- [X] revise sxhkd 
- [X] add a fullscreen shortcut
- [X] polybar configured
- [X] `dunst` configured in its own file
- [ ] `dunst` is configured badly, the colors and the padding from the bar and the side are way too big, needs a fix
- [X] zoxide
- [ ] garbage collection for home-manager
- [X] Window splitting in Kitty
- [X] Configure FastFetch with home-manager
- [X] Setup a screenshot tool
- [X] udisk rofi script
- [X] bluetooth rofi script
- [X] rofi theme
- [X] find a way to manage the rofi theme without the theme.bash file
- [X] add an environment variable $SLOWPUKE for the /home/slowpuke/does-nix/slowpuke path and update all the paths in the config
- [ ] fix `light` not working -- checkout `brillo` as an alternative
- [X] `sxhkd` is still kinda fucked, the conventions for the shortcuts i made is weird and the shortcuts that share ONE key get triggered when i thought they wouldnt. Watch some videos or read about it and make it finally work. The idea youre trying to make work is possible with keychords, basically `super + r ; {s,l,m}` would be an example on how to setup rofi, do the same thing with a bunch of commands, including rofi, dunst, and maybe more. Use these for reference https://wiki.archlinux.org/title/Sxhkd -- https://github.com/baskerville/sxhkd/tree/master
- [ ] `sxhkd` better resize
- [X] `sxhkd` fix move window to destop and move to desktop
- [X] 125% fractional scaling
- [X] cursor working sometimes -- fix it, maybe the home.pointer option will work better
- [X] 144hz
- [X] move the bspwm setup to bspwm.nix but import it in configuration.nix, fix all the problems that come along
- [ ] add animations with `pijulius`, hopefully the settings options will work no issue
- [X] `lf` wasnt up to my speed, maybe `yazi` will be better
- [X] make profiles, copy the home packages to each one (slowpuke and slowpuke-minimal(or just minimal)) and then delete or add the packages you need for both, when using a system just import into `home.nix` the profile you need. This wouldnt solve the bspwm being in the system config, but alas this is better than nothing
- [ ] write a normal `README`

