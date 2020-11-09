[ -f ~/.xprofile ] && . ~/.xprofile &

while true; do
    DISPLAY=:0 exec dwm
done
