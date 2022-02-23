rm -rf frameworks/av
git clone https://github.com/jjpprrrr/frameworks_av -b wfd frameworks/av
rm -rf vendor/qcom/opensource/commonsys-intf/display
git clone https://github.com/jjpprrrr/vendor_qcom_opensource_display-commonsys-intf -b caf-s vendor/qcom/opensource/commonsys-intf/display
rm -rf hardware/xiaomi
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-19.0 hardware/xiaomi
rm -rf hardware/qcom-caf/sdm845/display
git clone https://github.com/jjpprrrr/hardware_qcom-caf_sdm845_display -b caf-s hardware/qcom-caf/sdm845/display
git clone https://github.com/kdrag0n/proton-clang -b master prebuilts/clang/host/linux-x86/clang-proton