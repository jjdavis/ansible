#!/bin/bash

# Run debsums --all --changed

/usr/bin/debsums --all --changed >/var/log/debsums.log 2>&1
exit $?
