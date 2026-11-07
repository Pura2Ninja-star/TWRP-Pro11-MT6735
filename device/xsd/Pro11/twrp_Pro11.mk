# Untuk branch twrp-9.0 ke atas (default workflow: twrp-12.1)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/zImage-dtb:kernel

PRODUCT_DEVICE := Pro11
PRODUCT_NAME := twrp_Pro11
PRODUCT_BRAND := XSD
PRODUCT_MODEL := Pro11
PRODUCT_MANUFACTURER := XSD
