source ~/Scripts/colours
source ~/.shrc

shopt -s autocd

endchar="$"
if [ "$UID" = "0" ]; then
    endchar="#"
fi

export PS1="\[$LRED\][\[$YELLOW\]\u\[$LGREEN\]@\[$LBLUE\]\h \[$LPURPLE\]\w\[$LRED\]]\[$WHITE\]\$ \[$NONE\]"

loadkeys ~/.keystrings

[ -z "$TMUX" ] && tmux -f ~/.config/tmux/tmux.conf && exit
