#!/bin/sh
set -eu

clang++ -fbracket-depth=999999 -march=native -mtune=native -std=gnu++11 -O3 -flto -fuse-ld=lld -fomit-frame-pointer -fwrapv -Wno-attributes -fno-strict-aliasing -Da24_hex='0x3039' -Da24_val='12345' -Da_minus_two_over_four_array='{0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x30,0x39}' -Dbitwidth='64' -Dlimb_weight_gaps_array='{44,43,43,43,43}' -Dmodulus_array='{0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xef,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff}' -Dmodulus_bytes_val='27' -Dmodulus_limbs='5' -Dq_mpz='(1_mpz<<216) - (1_mpz<<108) - 1' "$@"
