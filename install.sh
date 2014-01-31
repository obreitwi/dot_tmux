#!/bin/bash

SCRIPTDIR=$(dirname $(abspath $0))

ln -s -f -v $SCRIPTDIR/scripts/toggle-mouse-mode.sh ~/usr/bin/tmux-toggle-mouse-mode

