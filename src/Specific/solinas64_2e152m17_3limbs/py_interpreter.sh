#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**152 - 17' -Dmodulus_bytes='50 + 2/3' -Da24='121665'
