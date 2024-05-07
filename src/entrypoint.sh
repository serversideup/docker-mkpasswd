#!/bin/sh

# Check if the first argument is '--method'
if [ "$1" = "--method" ]; then
    # If '--method' is the first argument, use all arguments as they are
    exec mkpasswd "$@"
else
    # If '--method' is not the first argument, use the default method and pass all arguments
    exec mkpasswd --method=sha-512 "$@"
fi
