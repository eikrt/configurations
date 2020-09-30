date and time
while try
do
	xsetroot -name "$(date"+%F %R")"
	sleep 1m
done &
exec dwm


