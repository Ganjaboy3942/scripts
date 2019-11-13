#!/usr/bin/env bash

echo "This script should be ran from the root directory of your ROM's source. This script will clone the necessary repositories for building a ROM for the Pixel 3a (Sargo) and Pixel 3a XL (Bonito). The only repo that should need modified is the device tree which needs edited for your ROM's source. Hope this helps!"

rm -rf device/google/bonito
rm -rf device/google/bonito-kernel
rm -rf device/google/sargo
#rm -rf device/google/bonito-sepolicy
#rm -rf device/qcom
rm -rf hardware/qcom/sdm710
rm -rf hardware/qcom/sdm845
rm -rf kernel/google/bonito
rm -rf vendor/google
rm -rf vendor/images
rm -rf vendor/gapps

git clone https://github.com/stebomurkn420/Bonito -b havoc device/google/bonito
git clone https://android.googlesource.com/device/google/bonito-sepolicy -b android-10.0.0_r12 device/google/bonito-sepolicy
git clone https://github.com/TheMuppets/proprietary_vendor_google vendor/google
git clone https://github.com/LineageOS/android_kernel_google_msm-4.9 kernel/google/msm-4.9
git clone https://gitlab.com/shagbag913/vendor_gapps.git -b lineage-17.0 vendor/gapps
#git clone https://gitlab.com/DirtyUnicorns/android_vendor_images.git vendor/images
git clone https://github.com/stebomurkn420/sdm710_hardware_qcom_display hardware/qcom/sdm710/display
git clone https://github.com/stebomurkn420/sdm710_hardware_qcom_gps hardware/qcom/sdm710/gps
git clone https://github.com/stebomurkn420/sdm710_hardware_qcom_media hardware/qcom/sdm710/media
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/thermal -b android-9.0.0_r47 hardware/qcom/sdm710/thermal
git clone https://android.googlesource.com/platform/hardware/qcom/sdm710/vr -b android-9.0.0_r47 hardware/qcom/sdm710/vr
git clone https://github.com/stebomurkn420/hardware_qcom_sdm710_data_ipacfg-mgr hardware/qcom/sdm710/data/ipacfg-mgr
