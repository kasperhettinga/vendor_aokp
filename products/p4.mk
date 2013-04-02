# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/p4/p4.mk)

# Inherit AOKP common bits for tablet & 3G
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# p4 Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/p4

# Setup device specific product configuration.
PRODUCT_NAME := aokp_p4
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := p4
PRODUCT_MODEL := GT-P7500
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-P7500 BUILD_FINGERPRINT=samsung/GT-P7500/GT-P7500:4.0.4/IMM76D/XXLQ8:user/release-keys PRIVATE_BUILD_DESC="GT-P7500-user 4.0.4 IMM76D XXLQ8 release-keys"


PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation.zip
