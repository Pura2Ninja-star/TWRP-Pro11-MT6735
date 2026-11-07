# Dipakai untuk branch twrp-7.1 (omni). Untuk twrp-9.0 ke atas: ganti nama file jadi twrp_Pro11.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/zImage-dtb:kernel

PRODUCT_DEVICE := Pro11
PRODUCT_NAME := omni_Pro11
PRODUCT_BRAND := XSD
PRODUCT_MODEL := Pro11
PRODUCT_MANUFACTURER := XSD
