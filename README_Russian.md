# jkson_fcc_mod

[*** ENGLISH VERSION ***](https://github.com/jkson5/jkson_fcc_mod/blob/master/README.md)

Для принудительноко включения настроек модуля связи Mavic Pro, таких как FCC,Boost,force_2.3G or force_2.5G, мы можем использовать внутренние команды.
Эти команды будут работать с любой операционной системой смартфона, с любой программой (например Litchi), и даже без смартфона совсем. Они выполняются на дроне локально.

FCC:              dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00024800FFFF0200000000

Boost:            dji_mb_ctrl -S test -R local -g 9 -s 9 -c 3c

Force to 2.3G:    dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFFA2030000

Force to 2.5G:    dji_mb_ctrl -S test -R local -g 9 -s 9 -c 27 00014600FFFF92040000
