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

Cpu(){

	mpstat | awk 'BEGIN { FS = "[ \t]+"} ; END {print $3 "%"}'

}
Memory(){
     mem=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
     memp=${mem:0:-2}%
     line="       "
     printf "${line:${#memp}}""%s %s" $memp
}
Workspaces () {
	TAG=$(cat /tmp/tag)	
	if [ $TAG -eq 1 ]; then
		echo -n " O  o  o  o  o  o  o  o  o "
	elif [ $TAG -eq 2 ]; then
		echo -n " o  O  o  o  o  o  o  o  o "
	elif [ $TAG -eq 4 ]; then
		echo -n " o  o  O  o  o  o  o  o  o "
	elif [ $TAG -eq 8 ]; then
		echo -n " o  o  o  O  o  o  o  o  o "
	elif [ $TAG -eq 16 ]; then
		echo -n " o  o  o  o  O  o  o  o  o "
	elif [ $TAG -eq 32 ]; then
		echo -n " o  o  o  o  o  O  o  o  o "
	elif [ $TAG -eq 64 ]; then
		echo -n " o  o  o  o  o  o  O  o  o "
	elif [ $TAG -eq 128 ]; then
		echo -n " o  o  o  o  o  o  o  O  o "
	elif [ $TAG -eq 256 ]; then
		echo -n " o  o  o  o  o  o  o  o  O "
	else
		echo -n " O  O  O  O  O  O  O  O  O "

	fi
}

UpdateTag () {
	
	TAG=$(/home/$USER/repo/configurations/desktop/lemonbar/client "get")

}

	while true; do
		
		echo -e "%{l} %{F#000000}%{B#d19a3f} $(Workspaces) %{r}%{F#000000}%{B#d19a3f} | $(ActiveWindow) | Mem: $(Memory) | CPU: $(Cpu) | Bat: $(Battery) | $(Clock) %{F-}%{B-}"
			        sleep 0.01
			done | \
			lemonbar -d  \
         		-g ${width}x${height}+${x}+${y} \
			-B#231f20
