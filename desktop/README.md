# DESKTOP

## BG

Simple ```feh``` backround script. Called from ```.xinitrc``` *(desktop/x/.xinitrc)*

## DWM

Patched with gaps *(https://dwm.suckless.org/patches/gaps/)*. Added also gaps to sides and **tag** (see ```dwm``` tags) status disk writer utility.

## GREETER

(todo)

Greeter when logging in. Will contain ```xrandr``` scripts and ```Newsboat``` things?

## LEMONBAR

Basic ```Lemonbar``` stuff. The module lsocket is part of socket system that was supposed to replace disk writing utility in ```DW``` but the project was frozen due to file descriptor limit. The system will be replaced with something else someday. The program has three parts, lsocket, lclient and another client in ```dwm``` directory. There are two clients, one sets the state in socket server and the ```Lemonbar``` part fetches it.

## SLSTATUS

Shows clock and battery.

# X

Basic ```.xinitrc```
