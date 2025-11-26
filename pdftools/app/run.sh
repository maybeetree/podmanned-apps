#!/bin/sh

. ~/.profile || true
#. /root/.profile || true

cmd="$(basename "$1")"
shift
"$cmd" "$@"

