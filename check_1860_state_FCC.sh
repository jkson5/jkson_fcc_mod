#!/system/bin/sh
dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00024800FFFF0200000000
/system/bin/check_1860_state.sh&
