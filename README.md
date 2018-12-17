# jkson_fcc_mod

[*** РУССКАЯ ВЕРСИЯ ***](http://github.com/jkson5/jkson_fcc_mod/blob/master/README_Russian.md)

[*** VERSIONE ITALIANA ***](http://github.com/jkson5/jkson_fcc_mod/blob/master/README_Italian.md)

For forcing Mavic Pro or P4Pv2 SDR settings such as FCC, Boost, force_2.3G or force_2.5G, we can use internal commands.
These commands will set radio parameters with any smartphone OS, any programms (e.g. Litchi), and even without smartphone at all. Because it will run on the drone locally. You have to apply this mod only for the drone. RC will sync.

If you want to use force23 or force25, you always must switch RC first. Otherwise frequency will not shift.

**This mod only for Mavic PRO/Platinum (1.04.0300 and lower) and Phantom4Pv2 (1.00.22.00 and lower)**

## How to install (Windows)

1) [Please download this repo](https://github.com/jkson5/jkson_fcc_mod/archive/master.zip) and unzip it somewhere.

2) Connect your Mavic PRO or P4Pv2 with USB cable. Switch it on.

3) Download and run [DUMLDore](https://github.com/jezzab/DUMLdore/releases/download/v3.15/DUMLdoreV3.zip). Press "ADB ENABLE".

4) Please check in Windows device manager, is there any unrecognized DJI devices. If yes, unpack ADBDriver.zip and try to force update driver for this device this way - Update driver software>Browse my computer>Let me pick from a list>show all>next>Have Disk>browse and select android_winusb.inf in unpacked ADBDriver folder. 

5) In mod folder run install_mod.bat and follow instruction in commandline

## How to use

Following installation procedure, you will able to choose different options, depends of aircraft model. Fixed FCC or Boost options will set persistant mode, and will take effect after reboot.

**For Mavic PRO/Platinum available "loop selector" mode. It means, you can select modes mid-flight, in loop. For switch to next mode you have to hold "pause" button and simultaneously press lefthand backside button (C1) once. The system allows you to change the mode no faster than every 5 seconds.**

The sequence is Default>FCC>Boost>SDR reset. "SDR reset" means SDR will restart with default mode. Please keep in mind, when SDR will restart, connection will be lost for few seconds (~3-4s), and the drone will start failsafe procedure, e.g. GoHome.

## How to check FCC mode

You should start DJI GO, go to HD settings, and look to frequency graph. If line ~1km is a bit under 90dBm, you are in CE mode. If line is higher than 90dBm, you are in FCC mode. Boost mode(1.5W) you can proof only with [radio powermeter](https://youtu.be/FS0O841k_SU), or with the test flight. Please ensure you have enough battery for back flight.

## How to say thanks or contact me

PayPal and email - evgeniychuiko@gmail.com
Telegram messenger @jkson5, or email me, but please start with "thank you" to PayPal. I have spent few months for it, and will spend more with your support. Thank you in advance!

## How to remove jkson mod

You have to repeat installation procedure. You will find "Delete mod" option in next step after device selection.

## DeejayeyeHackingClub information repos aka "The OG's" (Original Gangsters)

Special thanks to @jcase, @jan2642, @mefisto, @jezzab

[http://dji.retroroms.info](http://dji.retroroms.info) - "Wiki"

https://github.com/fvantienen/dji_rev - This repository contains tools for reverse engineering DJI product firmware images.

https://github.com/hdnes/pyduml - Assistant-less firmware pushes and DUMLHacks referred to as DUMBHerring when used with "fireworks.tar" from RedHerring. DJI silently changes Assistant? great... we will just stop using it.

https://github.com/MAVProxyUser/P0VsRedHerring - RedHerring, aka "July 4th Independence Day exploit", "FTPD directory transversal 0day", etc. (Requires Assistant). We all needed a public root exploit... why not burn some 0day?

https://github.com/MAVProxyUser/dji_system.bin - Current Archive of dji_system.bin files that compose firmware updates referenced by MD5 sum. These can be used to upgrade and downgrade, and root your I2, P4, Mavic, Spark, Goggles, and Mavic RC to your hearts content. (Use with pyduml or DUMLDore)

https://github.com/MAVProxyUser/firm_cache - Extracted contents of dji_system.bin, in the future will be used to mix and match pieces of firmware for custom upgrade files. This repo was previously private... it is now open.

https://github.com/MAVProxyUser/DUMLrub - Ruby port of PyDUML, and firmware cherry picking tool. Allows rolling of custom firmware images.

https://github.com/jezzab/DUMLdore - Even windows users need some love, so DUMLDore was created to help archive, and flash dji_system.bin files on windows platforms.

https://github.com/MAVProxyUser/DJI_ftpd_aes_unscramble - DJI has modified the GPL Busybox ftpd on Mavic, Spark, & Inspire 2 to include AES scrambling of downloaded files... this tool will reverse the scrambling
