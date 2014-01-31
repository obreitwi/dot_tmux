#!/bin/zsh

# g: global, w: window-options, v: only show value
toggle=$(tmux show-option -gwv mode-mouse)

if [[ $toggle == "off" ]]; then
	toggle="on"
else
	# catchall
	toggle="off"
fi

tmux display-message "Toggling mouse mode $toggle"

tmux set -gq mouse-select-pane $toggle
tmux set -gq mouse-resize-pane $toggle
tmux set -gq mouse-select-window $toggle
tmux set -gq mode-mouse $toggle

