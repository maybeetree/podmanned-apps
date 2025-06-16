#!/bin/sh

cmd="$(basename "$1")"
shift
"$cmd" "$@"

