#!/bin/sh
set -eu

/usr/bin/env python3 "$@" -Dq='2**192 - 2**64 - 1' -Dmodulus_bytes='21 + 1/3' -Da24='121665'
