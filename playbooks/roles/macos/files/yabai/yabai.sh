#!/usr/bin/env bash

function update_battery_loop() {
        # seconds to wait betwwen each refresh
        frequency=300

        while true; do
		# Get the current battery percentage.
		battery=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)

		if [ $battery -gt 84 ]; then
			yabai -m config status_bar_power_icon_strip battery-full plug
		elif [ $battery -gt 60 ]; then
			yabai -m config status_bar_power_icon_strip battery-three-quarters plug
		elif [ $battery -gt 39 ]; then
			yabai -m config status_bar_power_icon_strip battery-half plug
		elif [ $battery -gt 14 ]; then
			yabai -m config status_bar_power_icon_strip battery-quarter plug
		else
			yabai -m config status_bar_power_icon_strip battery-empty plug
		fi

		# wait 5 minutes
		sleep $frequency
	done
}

# run the function async
update_battery_loop &