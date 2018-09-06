#!/bin/bash

SRCDIR="$(dirname "$(readlink -f "${0}")")"

if [ -z "${PREFIX}" ]; then
    PREFIX="${HOME}/.local/bin"
fi

ln -s -f -v "${SRCDIR}/scripts/toggle-mouse-mode.sh" "${PREFIX}/tmux-toggle-mouse-mode"
pydemx "${SRCDIR}/tmux.conf.pydemx"

