#!/usr/bin/env bash

SRCDIR="$(dirname "$(readlink -f "${0}")")"

if [ -z "${PREFIX}" ]; then
    PREFIX="${HOME}/.local/bin"
fi

ln -s -f -v "${SRCDIR}/scripts/toggle-mouse-mode.sh" "${PREFIX}/tmux-toggle-mouse-mode"

! [ -d "$HOME/.config/tmux" ] && mkdir -p "$HOME/.config/tmux"
ln -sfv "${SRCDIR}/tmux.conf" "$HOME/.config/tmux"

