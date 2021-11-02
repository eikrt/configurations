setxkbmap fi
source $HOME/.profile
(sleep 1 && $HOME/repo/configurations/desktop/lemonbar/lemonbar.sh &)
$HOME/repo/configurations/desktop/bg/setbg.sh
compton --backend glx --paint-on-overlay --vsync opengl-swc &
exec dwm
