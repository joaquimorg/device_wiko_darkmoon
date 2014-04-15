$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/wiko/darkmoon/darkmoon-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/wiko/darkmoon/overlay

LOCAL_PATH := device/wiko/darkmoon

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_darkmoon
PRODUCT_DEVICE := darkmoon


PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/root/fstab:root/fstab \
	$(LOCAL_PATH)/root/init.rc:root/init.rc \
	$(LOCAL_PATH)/root/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/root/init.xlog.rc:root/init.xlog.rc \
	$(LOCAL_PATH)/root/init.modem.rc:root/init.modem.rc \
	$(LOCAL_PATH)/root/meta_init.rc:root/meta_init.rc \
	$(LOCAL_PATH)/root/meta_init.modem.rc:root/meta_init.modem.rc \
	$(LOCAL_PATH)/root/factory_init.rc:root/factory_init.rc \
	$(LOCAL_PATH)/root/init.protect.rc:root/init.protect.rc \
	$(LOCAL_PATH)/root/init.aee.customer.rc:root/init.aee.customer.rc \
	$(LOCAL_PATH)/root/init.charging.rc:root/init.charging.rc \
	$(LOCAL_PATH)/root/init.no_ssd.rc:root/init.no_ssd.rc \
	$(LOCAL_PATH)/root/init.project.rc:root/init.project.rc \
	$(LOCAL_PATH)/root/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/root/meta_init.project.rc:root/meta_init.project.rc \
	$(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
	$(LOCAL_PATH)/root/enableswap.sh:root/enableswap.sh



PRODUCT_PROPERTY_OVERRIDES += \
	ro.mediatek.version.release=ALPS.JB5.MP.V1.6 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.branch=ALPS.JB5.MP \
	ro.mediatek.version.sdk=1 \
	persist.gemini.sim_num=2 \
	ro.gemini.smart_sim_switch=false \
	ro.gemini.smart_3g_switch=1 \
	ril.specific.sm_cause=0 \
	bgw.current3gband=0 \
	ril.external.md=0 \
	ro.sf.hwrotation=0 \
	ril.current.share_modem=2 \
	launcherplus.allappsgrid=2d \
	launcher2.allappsgrid=3d_20 \
	curlockscreen=1 \
	ro.mediatek.gemini_support=true \
	persist.radio.fd.counter=15 \
	persist.radio.fd.off.counter=5 \
	persist.radio.fd.r8.counter=15 \
	persist.radio.fd.off.r8.counter=5 \
	persist.mtk.wcn.combo.chipid=-1 \
	drm.service.enabled=true \
	fmradio.driver.enable=1 \
	ril.first.md=1 \
	ril.flightmode.poweroffMD=1 \
	ril.telephony.mode=1 \
	dalvik.vm.mtk-stack-trace-file=/data/anr/mtk_traces.txt \
	persist.mtk.anr.mechanism=1 \
	mediatek.wlan.chip=MT6620 \
	mediatek.wlan.module.postfix=_mt6620 \
	ril.radiooff.poweroffMD=0 \
	ro.config.notification_sound=musicbox.ogg \
	ro.config.alarm_alert=Mirage.ogg \
	ro.config.ringtone=FunAndGame.ogg \
	ro.config.ringtone_sim2=Dazzle.ogg \
	ter.service.enable=0 \
	persist.sys.timezone=Europe/Lisbon \
	ro.setupwizard.mode=DISABLED \
	ro.com.google.gmsversion=4.2_r3 \
	net.bt.name=Android \
	dalvik.vm.stack-trace-file=/data/anr/traces.txt

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	ro.allow.mock.location=1 \
	persist.mtk.aee.aed=on \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp,adb \
	persist.service.acm.enable=0 \
	ro.mount.fs=EXT4

#PRODUCT_PACKAGES += \
#    libfmjni

#PRODUCT_PACKAGES += \
#    FMRadio

#copy gapps to ROM
$(call inherit-product, device/wiko/darkmoon/gapps.mk)