#!/bin/ash

width=1920
height=18
x=0
y=0

Clock() {
	        DATETIME=$(date "+%a %b %d, %T")
		        echo -n "$DATETIME"
		}
Battery() {
	        BATPERC=$(acpi --battery | cut -d, -f2)
		        echo "$BATPERC"
		}
ActiveWindow(){

	len=$(echo -n "$(xdotool getwindowfocus getwindowname)" | wc -m)
	max_len=70
	if [ "$len" -gt "$max_len" ];then
		echo -n "$(xdotool getwindowfocus getwindowname | cut -c 1-$max_len)..."
	else
		echo -n "$(xdotool getwindowfocus getwindowname)"
	fi
}

	while true; do

		echo -e "%{r}%{F#000000}%{B#d19a3f} $(ActiveWindow) | $(Battery) | $(Clock) %{F-}%{B-}"
			        sleep 1
			done | \
			lemonbar -d  \
         		-g ${width}x${height}+${x}+${y} \
			-B#231f20
