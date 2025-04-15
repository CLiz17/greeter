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

quotes=("You're exactly where you need to be right now." "You’re capable of hard things — and this is just one of them." "Breathe. Reset. Go again." "You’re doing better than you think." "Small steps still move you forward." "You’ve come so far. Don’t forget that." "The fact that you care means you’re already winning." "Some days are slow — but not pointless." "You've handled worse. You got this too." "Your effort matters. It’s building up." "It’s okay to pause, but don’t quit." "You are growing in ways you can’t yet see." "This isn't pressure. It's potential." "Keep showing up. Magic’s brewing." "Today is another chance to try again — and that’s powerful.")
random_quote=$((RANDOM % ${#quotes[@]}))

emojis=(☀️  🌈 🌻 🍀 💛 🤗 🧡 ✨ ☕ 💪 🔥 🚀 🎯 ⚡ 💖 🌸 🦋 💫 🍂 🐝 🌟)
random_emoji=$((RANDOM % ${#emojis[@]}))

echo "Hey $user! $greeting ${emojis[$random_emoji]}"
echo "It's $time, That's the time to get started!"
echo "${quotes[$random_quote]}"
