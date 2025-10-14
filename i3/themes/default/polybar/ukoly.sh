if [[ -f "/tmp/wanted.txt" ]]; then
    WANTED=$(cat "/tmp/wanted.txt")
else 
    touch "/tmp/wanted.txt"
    echo 1 > "/tmp/wanted.txt"
    WANTED=$(cat "/tmp/wanted.txt")
fi

LEN=$(wc -l < /home/jachym/ukoly.txt)


WANTED=$(( WANTED % LEN))

LINE=0
while read -r CURRENT_LINE; do
        if [[ $LINE -eq $WANTED ]]; then
            echo "$LINE. $CURRENT_LINE"
            break
        fi
    ((LINE++))
done < "/home/jachym/ukoly.txt"
