setxkbmap fi
(sleep 1 && $HOME/repo/configurations/desktop/lemonbar/lemonbar.sh &)
$HOME/repo/configurations/desktop/bg/setbg.sh
compton &
exec dwm
