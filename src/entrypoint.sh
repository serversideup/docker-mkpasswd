#!/bin/sh

exec mkpasswd --method=sha-512 "$@"
