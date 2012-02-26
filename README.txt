How to build

1. Get android open source.
    : version info - Android gingerbread 2.3.3(r1)
    ( Download site : http://source.android.com )

2. Download GT-I9001_OpenSource.tar.gz 
    ( https://opensource.samsung.com/ -> MOBILE -> Mobile Phone -> Search I9001 ) 

3. Overwrite modules that you want to build.
 - \external\iproute2 : Write "ip \" into "build\core\user_tags.mk" so that add this module.
 - \external\webkit  : Delete this source tree at Android gingerbread and then copy & execute "clean build".

4. Overwrite modules GT-I9001_OpenSource_HKTW.tar again. 

5. Add the following lines at the end of build/target/board/generic/BoardConfig.mk

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true
BOARD_USES_ALSA_AUDIO := true



6. make