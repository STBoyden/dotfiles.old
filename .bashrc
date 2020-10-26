source ~/Scripts/colours
source ~/.shrc

shopt -s autocd

endchar="$"
if [ "$UID" = "0" ]; then
    endchar="#"
fi

export PS1="\[$LRED\][\[$YELLOW\]\u\[$LGREEN\]@\[$LBLUE\]\h \[$LPURPLE\]\w\[$LRED\]]\[$WHITE\]\$ \[$NONE\]"

sudo loadkeys ~/.keystrings

[ ! -z "$(tty | egrep tty)" ] && [ -z "$(pgrep dwm)" ] && startx && exit
[ -z "$TMUX" ] && [ -z "$(tty | egrep tty)" ] && tmux -f ~/.config/tmux/tmux.conf && exit

