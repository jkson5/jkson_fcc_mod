#!/system/bin/sh
/system/bin/check_1860_state.sh&
while :
do
	logcat | grep -FEm 1 ', 0, 0, 1, 1, 0, 0, ., ., 0, 0, 0, 0, 0, 0, ..'
	dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00024800FFFF0200000000
	sleep 5
	logcat | grep -FEm 1 ', 0, 0, 1, 1, 0, 0, ., ., 0, 0, 0, 0, 0, 0, ..'
	dji_mb_ctrl -S test -R local -g 9 -s 9 -c 3c
	sleep 5
	logcat | grep -FEm 1 ', 0, 0, 1, 1, 0, 0, ., ., 0, 0, 0, 0, 0, 0, ..'
	dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFFA2030000
	sleep 5
	logcat | grep -FEm 1 ', 0, 0, 1, 1, 0, 0, ., ., 0, 0, 0, 0, 0, 0, ..'
	dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27
	sleep 5
done
