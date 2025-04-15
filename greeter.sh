#!/bin/bash

user=$(whoami)
hour=$(date +"%I")
min=$(date +"%p")
time=$(date +"%I:%M %p")

hour=$((10#$hour))

if [[ "$min" == "AM" && $hour -ge 4 && $hour -le 11 ]]; then
    greeting="Good Morning"
elif [[ "$min" == "PM" && $hour -ge 12 && $hour -le 3 ]]; then
    greeting="Good Afternoon"
elif [[ "$min" == "PM" && $hour -ge 4 && $hour -le 7 ]]; then
    greeting="Good Evening"
else
    greeting="Nighty Night"
fi

echo "Hey $user! $greeting"
echo "It's $time, time to get started!"
