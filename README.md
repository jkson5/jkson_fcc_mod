# jkson_fcc_mod

[*** РУССКАЯ ВЕРСИЯ ***](https://github.com/jkson5/jkson_fcc_mod/blob/master/README_Russian.md)

For forcing Mavic Pro SDR settings as FCC,Boost,force_2.3G or force_2.5G, we can use internal commands.
These commands will set radio parameters with any smartphones OS, any programms (e.g. Litchi), and even without smartphone at all. Because it will run on the drone locally.

## How to install

1) [Please download this repo](https://github.com/jkson5/jkson_fcc_mod/archive/master.zip) and unzip it to your desktop. Rename unzipped folder to master, by removing extra characters.

2) In folder master on your desktop, please take file with .sh extension with parameters you need (file name contains parameters), and rename it to check_1860_state.sh by removing extra characters.

3) Connect your Mavic PRO with USB cable. Switch it on.

4) Download and run [DUMLDore](https://github.com/jezzab/DUMLdore/releases/download/v3.15/DUMLdoreV3.zip). Press "ADB ENABLE".

5) Please check in Windows device manager, is there any unrecognized DJI devices. If yes, unpack ADBDriver.zip and try to force update driver for this device this way - Update driver software>Browse my computer>Let me pick from a list>show all>next>Have Disk>browse and select android_winusb.inf in unpacked ADBDriver folder. 

6) Please run commandline with Win+R and cmd, or from Windows start menu.

7) In commandline please do these commands, one by one:

cd desktop/master

adb shell busybox mount -o remount,rw /vendor

adb shell mkdir /vendor/bin

adb shell chmod 755 /vendor/bin

adb push check_1860_state.sh /vendor/bin/check_1860_state.sh

adb shell chmod 755 /vendor/bin/check_1860_state.sh

8) Switch Mavic off

## How to check FCC mode

You should start DJI GO, go to HD settings, and look to frequency graph. If line ~1km is a bit under 90dBm, you are in CE mode. If line is higher than 90dBm, you are in FCC mode. Boost mode(1.5W) you can proof only with special radio analyzer, or with the test flight. Please ensure you have enough battery for back flight.

## How to say thanks

PayPal evgeniychuiko@gmail.com

## How to remove jkson mod

You have to do 1-6 points, and after do these commands one by one:

cd desktop/master

adb shell busybox mount -o remount,rw /vendor

adb shell rm /vendor/bin/check_1860_state.sh

## DeejayeyeHackingClub information repos aka "The OG's" (Original Gangsters)

Special thanks to @jcase, @jan2642, @mefisto

[http://dji.retroroms.info](http://dji.retroroms.info) - "Wiki"

https://github.com/fvantienen/dji_rev - This repository contains tools for reverse engineering DJI product firmware images.

https://github.com/hdnes/pyduml - Assistant-less firmware pushes and DUMLHacks referred to as DUMBHerring when used with "fireworks.tar" from RedHerring. DJI silently changes Assistant? great... we will just stop using it.

https://github.com/MAVProxyUser/P0VsRedHerring - RedHerring, aka "July 4th Independence Day exploit", "FTPD directory transversal 0day", etc. (Requires Assistant). We all needed a public root exploit... why not burn some 0day?

https://github.com/MAVProxyUser/dji_system.bin - Current Archive of dji_system.bin files that compose firmware updates referenced by MD5 sum. These can be used to upgrade and downgrade, and root your I2, P4, Mavic, Spark, Goggles, and Mavic RC to your hearts content. (Use with pyduml or DUMLDore)

https://github.com/MAVProxyUser/firm_cache - Extracted contents of dji_system.bin, in the future will be used to mix and match pieces of firmware for custom upgrade files. This repo was previously private... it is now open.

https://github.com/MAVProxyUser/DUMLrub - Ruby port of PyDUML, and firmware cherry picking tool. Allows rolling of custom firmware images.

https://github.com/jezzab/DUMLdore - Even windows users need some love, so DUMLDore was created to help archive, and flash dji_system.bin files on windows platforms.

https://github.com/MAVProxyUser/DJI_ftpd_aes_unscramble - DJI has modified the GPL Busybox ftpd on Mavic, Spark, & Inspire 2 to include AES scrambling of downloaded files... this tool will reverse the scrambling
