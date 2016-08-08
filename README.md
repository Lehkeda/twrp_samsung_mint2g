# Samsung Galaxy Star
Device Tree for Samsung Galaxy Star GT-S5280/2 to build TWRP recovery !!!

## Pre-requisites

* Any ROM source like cm-11.0 or cm-12.1 .
* TWRP recovery source - https://github.com/omnirom/android_bootable_recovery - Clone this repository in bootable/recovery-twrp .
* Device Tree to build TWRP - This repository. Clone this repository in device/samsung/mint2g .

## Building
* Open terminal in the source folder (of cm-12.1) and type 
	* source build/envsetup.sh
	* lunch cm_mint2g-userdebug
	* make recoveryimage -j# - replace # with number of your cpu cores or the one you want -
	* Happy building ^_^

## Notes 
* DON'T use cm13 source code as you will get errors .
* OMNI and SlimRoms ROMs already include TWRP source so no need to clone them again !
* Clone android-6.0 branch to get TWRP 3.0.2  .

## Credits (No specific order )
* Corphish .
* LehKeda .
* Dreamstar .
* andii_nr .


