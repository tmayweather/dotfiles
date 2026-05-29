#!/bin/bash

# Check if 'cider' is the active media player
active_player=$(playerctl -l)

if echo "$active_player" | grep -q "cider"; then
    title=$(playerctl metadata title)
    artist=$(playerctl metadata artist)

    # Limit to 30 characters
    title=${title:0:30}
    artist=${artist:0:30}

    if [[ -n "$title" && -n "$artist" ]]; then
        echo "$artist - $title"
    else
        echo "No Song"
    fi
else
    echo "Cider is not the active media player"
fi

