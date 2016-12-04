#!/bin/sh
set -e

# Prepend "dpl" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- dpl "$@"
fi

exec "$@"
