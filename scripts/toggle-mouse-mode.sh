#!/bin/zsh

# g: global, w: window-options, v: only show value
toggle=$(tmux show-option -gwv mode-mouse 2>&1)
style="old"

echo $toggle | grep -q "^unknown option:"

if [[ $? == 0 ]]; then
	toggle=$(tmux show-option -gv mouse)
	style="new"
fi

if [[ $toggle == "off" ]]; then
	toggle="on"
else
	# catchall
	toggle="off"
fi


tmux display-message "Toggling mouse mode $toggle (using $style style)"

if [[ $style == "old" ]]; then
	tmux set -gq mouse-select-pane $toggle
	tmux set -gq mouse-resize-pane $toggle
	tmux set -gq mouse-select-window $toggle
	tmux set -gq mode-mouse $toggle
else
	tmux set -gq mouse $toggle
fi
