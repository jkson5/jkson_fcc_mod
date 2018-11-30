# jkson_fcc_mod

[*** РУССКАЯ ВЕРСИЯ ***](https://github.com/jkson5/jkson_fcc_mod/blob/master/README_Russian.md)

For forcing Mavic Pro SDR settings as FCC,Boost,force_2.3G or force_2.5G, we can use internal commands.
These commands will set radio parameters with any smartphones OS, any programms (e.g. Litchi), and even without smartphone at all. Because it will run on the drone locally.

## How to install

1) [Please download this repo](https://github.com/jkson5/jkson_fcc_mod/archive/master.zip) and unzip it to your desktop. Rename unzipped folder to master, by removing extra characters.

2) In folder master on your desktop, please take file with .sh extension with parameters you need (file name contains parameters), and rename it to check_1860_state.sh by removing extra characters.

3) Connect your Mavic PRO with USB cable. Switch it on.

4) Download and run [DUMLDore](https://github.com/jezzab/DUMLdore/releases/download/v3.15/DUMLdoreV3.zip). Press "ADB ENABLE".

5) Please check in Windows device manager, is there any unrecognized DJI devices. If yes, unpack ADBDriver.zip and try to update driver for this device with path to ADBDriver directory.

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
