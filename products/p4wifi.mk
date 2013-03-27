# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/p4wifi/p4wifi.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# p4wifi Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p4wifi

# Setup device specific product configuration.
PRODUCT_NAME := aokp_p4wifi
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4wifi
PRODUCT_MODEL := GT-P7510
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7510 BUILD_FINGERPRINT=samsung/GT-P7510/GT-P7510:4.0.4/IMM76D/UELPL:user/release-keys PRIVATE_BUILD_DESC="GT-P7510-user 4.0.4 IMM76D UELPL release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
