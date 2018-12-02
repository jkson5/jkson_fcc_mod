#!/system/bin/sh
/system/bin/check_1860_state.sh&
sleep 10
dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFFA2030000
