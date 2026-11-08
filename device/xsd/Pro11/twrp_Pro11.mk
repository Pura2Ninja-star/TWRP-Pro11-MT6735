# Untuk branch twrp-11 / twrp-12.1
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := Pro11
PRODUCT_NAME := twrp_Pro11
PRODUCT_BRAND := XSD
PRODUCT_MODEL := Pro11
PRODUCT_MANUFACTURER := XSD

PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab
