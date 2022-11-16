# Exports.
export WITH_GAPPS=true
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/home/julival/ccache
ccache -M 100G -F 0
# Dependencies.
git clone https://github.com/bittencourtjulival/android_device_xiaomi_sdm845-common -b 13 device/xiaomi/sdm845-common
git clone https://github.com/bittencourtjulival/vendor_xiaomi_polaris -b 13 vendor/xiaomi/polaris
git clone https://github.com/bittencourtjulival/vendor_xiaomi_sdm845-common -b 13 vendor/xiaomi/sdm845-common
git clone https://github.com/bittencourtjulival/android_kernel_xiaomi_sdm845 -b lineage-20 kernel/xiaomi/sdm845 --depth=1
git clone https://gitlab.pixelexperience.org/android/vendor-blobs/vendor_xiaomi-firmware -b eleven vendor/xiaomi-firmware
# Hals
git clone https://github.com/bittencourtjulival/hardware_qcom-caf_sdm845_media -b 13 hardware/qcom-caf/sdm845/media
git clone https://github.com/bittencourtjulival/hardware_qcom-caf_sdm845_display -b 13 hardware/qcom-caf/sdm845/display
git clone https://github.com/bittencourtjulival/hardware_qcom-caf_sdm845_audio -b 13 hardware/qcom-caf/sdm845/audio
# Sepolicy and extras.
git clone https://github.com/bittencourtjulival/device_qcom_sepolicy_vndr-legacy-um -b 13 device/qcom/sepolicy_vndr-legacy-um
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi
git clone https://gitlab.com/arrowos-project/android_prebuilts_clang_host_linux-x86_clang-r437112b prebuilts/clang/host/linux-x86/clang-r437112b -b master --depth=1
# Build.
lunch spark_polaris-userdebug
mka bacon -j$(nproc --all)
