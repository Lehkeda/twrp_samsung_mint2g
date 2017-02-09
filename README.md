# Samsung Galaxy Star
Device Tree for Samsung Galaxy Star GT-S5280/2 to build TWRP recovery !!!

## Pre-requisites

* Any ROM source like LineageOS-14.1 or any other ROM .
* TWRP recovery source - https://github.com/omnirom/android_bootable_recovery - Clone it under bootable/recovery-twrp .
* Device Tree to build TWRP -This repository-. Clone it under device/samsung/mint2g .
* (Optional) Kernel source in case you don't want to use prebuilt kernel . Clone it under kernel/samsung/mint2g .

## Building
* Open terminal in the source folder and type 
	* source build/envsetup.sh
	* lunch lineage_mint2g-userdebug
	* make recoveryimage -j# - replace # with number of your cpu cores or the one you want -
	* Happy building ^_^

## Notes
* If you are trying to build TWRP-3.0.3/Nougat recovery or higher , it probably won't because recovery image will probably be larger than recovery partation .
* OMNI and SlimRoms ROMs already include TWRP source so no need to clone them again unless you want recent TWRP version  !
* Clone android-6.0 branch to get TWRP 3.0.2  .
* Clone android-7.1 branch to get TWRP 3.0.3  .
* You may need to edit device tree to get it working with different ROMs like OMNI , Slim , ....

## Credits (No specific order )
* Corphish .
* LehKeda .
* Dreamstar .
* andii_nr .
