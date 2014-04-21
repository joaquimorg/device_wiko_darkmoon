## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := darkmoon

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/wiko/darkmoon/device_darkmoon.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release data
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := darkmoon
PRODUCT_NAME := cm_darkmoon
PRODUCT_BRAND := wiko
PRODUCT_MODEL := Wiko Darkmoon (joaquim.org)
PRODUCT_MANUFACTURER := wiko
