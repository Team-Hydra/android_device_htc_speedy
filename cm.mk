# Inherit AOSP device configuration for speedy.
$(call inherit-product, device/htc/speedy/full_speedy.mk)

# Inherit some common cm stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := speedy

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_speedy
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := speedy
PRODUCT_MODEL := Evo Shift 4G
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_speedy BUILD_FINGERPRINT=sprint/htc_speedy/speedy:2.3.4/GRJ22/437693.8:user/release-keys PRIVATE_BUILD_DESC="2.77.651.8 CL437693 release-keys"

# USB
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage
