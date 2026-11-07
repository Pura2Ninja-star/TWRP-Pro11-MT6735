# TWRP device tree: XSD Pro11 (MT6735, Android 7.0, 32-bit)

Dibuat dari dump perangkat + stock recovery.img.

## Build (Ubuntu 20.04/22.04)
    mkdir twrp && cd twrp
    repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
    repo sync -c -j4 --no-tags --no-clone-bundle
    # salin folder device/xsd/Pro11 ke twrp/device/xsd/Pro11
    source build/envsetup.sh
    lunch omni_Pro11-eng
    mka recoveryimage

Hasil: out/target/product/Pro11/recovery.img

## Flash
SP Flash Tool, scatter file tablet, centang hanya `recovery`, mode Download Only.
Backup recovery.img stock dulu.

## Catatan
- Kernel = prebuilt dari stock (zImage + DTB tergabung), jadi tidak perlu --dt.
- Ramdisk stock tidak memakai header MTK, jadi tidak perlu mtk-header.
- Kalau layar warna aneh: ganti TARGET_RECOVERY_PIXEL_FORMAT ke RGBX_8888 atau BGRA_8888.
- Kalau backlight tidak menyala: cek /sys/class/leds/ dan sesuaikan TW_BRIGHTNESS_PATH.
- /data terenkripsi (forceencrypt), belum bisa didekripsi di TWRP ini.
