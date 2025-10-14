if [[ -f "/tmp/wanted.txt" ]]; then
    CUR=$(< "/tmp/wanted.txt")
else
    touch "/tmp/wanted.txt"
    echo 1 > "/tmp/wanted.txt"
    CUR=$(< "/tmp/wanted.txt")
fi

if [[ $1 -eq 1 ]]; then
    DIFF=1
else
   DIFF=-1
fi


CUR=$(( CUR + DIFF ))
echo $CUR > "/tmp/wanted.txt"
