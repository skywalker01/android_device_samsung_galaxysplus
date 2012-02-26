#!/bin/bash

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=galaxysplus
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

DIRS=(
bin
firmware
lib
lib/egl
lib/hw
etc
etc/wifi
etc/firmware
cameradata
media
firmware
usr/keychars
usr/keylayout
)

for DIR in ${DIRS[@]}; do
	mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$DIR
done

FILES=(
# misc
bin/rmt_storage
etc/media_profiles.xml

# gps
#etc/gps.conf
#bin/gpsd

# bluetooth
#bin/btld
#etc/init.qcom.bt.sh

# radio
bin/rild
#lib/libril.so
lib/libsecril-client.so
lib/libsec-ril.so
#bin/qmuxd
#lib/libdiag.so
# NPS-specific
#bin/drexe
#bin/npsmobex
#bin/cnd
#lib/libdsutils.so
#lib/libidl.so
#lib/libqmi.so
#lib/libqmiservices.so
#lib/libnetmgr.so
#bin/netmgrd
#bin/ds_fmc_appd

# omx libs
#lib/libmm-adspsvc.so
#lib/libOmxAacDec.so
#lib/libOmxAacEnc.so
#lib/libOmxAdpcmDec.so
#lib/libOmxAmrDec.so
#lib/libOmxAmrEnc.so
#lib/libOmxAmrRtpDec.so
#lib/libOmxAmrwbDec.so
#lib/libOmxCore.so
#lib/libOmxEvrcEnc.so
#lib/libOmxEvrcDec.so
#lib/libOmxMp3Dec.so
#lib/libOmxQcelp13Enc.so
#lib/libOmxQcelp13Dec.so
#lib/libOmxVdec.so
#lib/libOmxVenc.so
#lib/libOmxWmaDec.so

# omx shared libs
#lib/libaomx_aacdec_sharedlibrary.so
#lib/libaomx_ac3dec_sharedlibrary.so
#lib/libaomx_divx3dec_sharedlibrary.so
#lib/libaomx_flacdec_sharedlibrary.so
#lib/libaomx_h264dec_sharedlibrary.so
#lib/libaomx_mp3dec_sharedlibrary.so
#lib/libaomx_mpeg4dec_sharedlibrary.so
#lib/libaomx_radec_sharedlibrary.so
#lib/libaomx_rvdec_sharedlibrary.so
#lib/libaomx_s263dec_sharedlibrary.so
#lib/libaomx_wmvdec_sharedlibrary.so

#wifi
etc/wifi/nvram_net.txt
etc/wifi/nvram_mfg.txt
#etc/wifi/dhd.ko
#etc/wifi/bcm4329_aps.bin
#etc/wifi/bcm4329_sta.bin
#etc/wifi/bcm4329_mfg.bin
#bin/mfgloader
#bin/macloader
#bin/hostapd
#etc/init.qcom.wifi.sh

#video
lib/libgsl.so
lib/hw/overlay.default.so
lib/liboverlay.so
lib/egl/libEGL_adreno200.so
lib/egl/libGLESv1_CM_adreno200.so
lib/egl/libGLESv2_adreno200.so
lib/egl/libq3dtools_adreno200.so
etc/firmware/yamato_pfp.fw
etc/firmware/yamato_pm4.fw

# tvout
lib/libtvout.so
lib/libtvout_jni.so
lib/lib_tvoutengine.so
lib/libtvoutservice.so
bin/tvoutserver
bin/hdmid

# audio
#lib/libaudioalsa.so
#lib/libaudio.so
#lib/libaudioeq.so
#lib/liba2dp.so

# sensors
lib/libsensor_yamaha_test.so
#lib/libsensorservice.so
bin/orientationd
bin/geomagneticd

# camera
#lib/libActionShot.so
#lib/libarccamera.so
#lib/libcamera_client.so
#lib/libcamerafirmwarejni.so
#lib/libcameraservice.so
#lib/libCaMotion.so
#lib/libcaps.so
lib/libPanoraMax1.so
lib/libPlusMe.so
lib/libs3cjpeg.so
#lib/libseccamera.so
#lib/libcamera.so
lib/liboemcamera.so
lib/libmmipl.so
lib/libmmjpeg.so
#lib/libgemini.so
lib/libseccameraadaptor.so
lib/libsecjpegencoder.so
cameradata/datapattern_420sp.yuv
cameradata/datapattern_front_420sp.yuv

# charging mode
bin/battery_charging
bin/charging_mode
bin/playlpm
lib/libQmageDecoder.so
media/battery_charging_10.qmg
media/battery_charging_100.qmg
media/battery_charging_15.qmg
media/battery_charging_20.qmg
media/battery_charging_25.qmg
media/battery_charging_30.qmg
media/battery_charging_35.qmg
media/battery_charging_40.qmg
media/battery_charging_45.qmg
media/battery_charging_5.qmg
media/battery_charging_50.qmg
media/battery_charging_55.qmg
media/battery_charging_60.qmg
media/battery_charging_65.qmg
media/battery_charging_70.qmg
media/battery_charging_75.qmg
media/battery_charging_80.qmg
media/battery_charging_85.qmg
media/battery_charging_90.qmg
media/battery_charging_95.qmg
media/chargingwarning.qmg
media/Disconnected.qmg

# some firmware
firmware/CE147F00.bin
firmware/CE147F01.bin
firmware/CE147F02.bin
firmware/CE147F03.bin
etc/firmware/vidc_720p_command_control.fw
etc/firmware/vidc_720p_h263_dec_mc.fw
etc/firmware/vidc_720p_h264_dec_mc.fw
etc/firmware/vidc_720p_h264_enc_mc.fw
etc/firmware/vidc_720p_mp4_dec_mc.fw
etc/firmware/vidc_720p_mp4_enc_mc.fw
etc/firmware/vidc_720p_vc1_dec_mc.fw

# keychars
usr/keychars/ariesve_keypad_numeric.kcm.bin
usr/keychars/ariesve_keypad_qwerty.kcm.bin

# keylayouts
usr/keylayout/7k_handset.kl
#usr/keylayout/AVRCP.kl
usr/keylayout/ariesve_handset.kl
usr/keylayout/ariesve_keypad.kl
usr/keylayout/fluid-keypad.kl
usr/keylayout/msm_tma300_ts.kl
usr/keylayout/sec_jack.kl
)

OBJECTS=(
#lib/libaudioalsa.so
#lib/libcamera.so
#lib/liboemcamera.so
)

FILES_FROM=(
bin/BCM4329B1_002.002.023.0746.0000_SS_S1-plus-38_4MHz-TEST-ONLY.hcd
etc/wifi/bcm4329_aps.bin
etc/wifi/bcm4329_sta.bin
etc/wifi/bcm4329_mfg.bin
#lib/libcamera.so
#lib/hw/gps.msm7k.so
#lib/hw/sensors.GT-I9001.so
#lib/hw/gralloc.msm7k.so
)

FILES_TO=(
etc/firmware/bcm4329.hcd
etc/firmware/bcm4329_aps.bin
etc/firmware/bcm4329_sta.bin
etc/firmware/bcm4329_mfg.bin
#lib/libsamsungcamera.so
#lib/hw/gps.msm7x30.so
#lib/hw/sensors.msm7x30.so
#lib/hw/gralloc.msm7x30.so
)

for i in ${FILES[@]}; do
    echo $i
    adb pull "system/$i" "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i" #2> /dev/null
#    cp ~/android/i9001/mount/$i "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i"
done

for i in ${FILES_FROM[@]}; do
    echo $i
    adb pull "system/$i" "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i" #2> /dev/null
#    cp ~/android/i9001/mount/$i "../../../vendor/$MANUFACTURER/$DEVICE/proprietary/$i"
done

chmod -R a+x ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin/*

vendor_blobs=../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk

(cat << EOF) > $vendor_blobs
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PRODUCT_COPY_FILES += \\
EOF

for i in ${OBJECTS[@]}; do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/$i:obj/$i \\" >> $vendor_blobs
done

for i in ${FILES[@]}; do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/$i:system/$i \\" >> $vendor_blobs
done

for (( i=0; i < ${#FILES_TO[@]}; i++ )); do
    echo "vendor/$MANUFACTURER/$DEVICE/proprietary/${FILES_FROM[$i]}:system/${FILES_TO[$i]} \\" >> $vendor_blobs
done

./setup-makefiles.sh
