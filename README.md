# jkson_fcc_mod

[*** РУССКАЯ ВЕРСИЯ ***](https://github.com/jkson5/jkson_fcc_mod/blob/master/README_Russian.md)

For forcing Mavic Pro SDR settings as FCC,Boost,force_2.3G or force_2.5G, we can use internal commands.
These commands will set radio parameters with any smartphones OS, any programms (e.g. Litchi), and even without smartphone at all. Because it will run on the drone locally.

FCC:              dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00024800FFFF0200000000

Boost:            dji_mb_ctrl -S test -R local -g 9 -s 9 -c 3c

Force to 2.3G:    dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFFA2030000

Force to 2.5G:    dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFF92040000
