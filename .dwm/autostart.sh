# ! /bin/bash

#Wallpaper
feh --bg-scale ~/Bilder/7K1SlhX.png

#Composite manager
xcompmgr &

#Statusbar
while true; do

	DATIME=$(date '+%Y-%d-%m %H:%M')
	BATTERIES=$(acpi -b | awk '{print $4}' | sed s/,//)
	BATTIME=$(acpi -b | awk '{print $5}' | sed s/,//)
	BATTERY1=$(grep -w "POWER_SUPPLY_CAPACITY" /sys/class/power_supply/BAT1/uevent | sed ' s/POWER_SUPPLY_CAPACITY=//')%


	xsetroot -name "| $BATTERY1 $BATTIME | $DATIME"
	sleep 40s

done
