#!/bin/bash

SCRIPTDIR=$(cd $(dirname $0); pwd)

echo $SCRIPTDIR

ln -s -f -v $SCRIPTDIR/scripts/toggle-mouse-mode.sh ~/usr/bin/tmux-toggle-mouse-mode

