
#!/bin/bash

# Check if Spotify is playing
if playerctl --player=spotify status | grep -q 'Playing'; then
    # Output the artist and title if playing
    output="$(playerctl metadata --format '{{artist}} - {{title}}')"
    echo "$prefix $output"
    # playerctl --player=spotify metadata --format "{{artist}} - {{title}}"
else
    # Output a fallback message when no song is playing
    echo "koule pero"
fi
