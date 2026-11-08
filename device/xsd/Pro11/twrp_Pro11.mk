# Untuk branch twrp-11 / twrp-12.1
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_RELEASE_NAME := Pro11

PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/recovery.fstab

## Device identifier. Harus setelah semua inherit-product
PRODUCT_DEVICE := Pro11
PRODUCT_NAME := twrp_Pro11
PRODUCT_BRAND := XSD
PRODUCT_MODEL := Pro11
PRODUCT_MANUFACTURER := XSD
