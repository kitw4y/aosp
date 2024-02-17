# sync rom
repo init -u https://github.com/kitw4y/manifest.git -b 14.0 --git-lfs
repo sync -c --force-sync --no-tags --no-clone-bundle -j4 --optimized-fetch --prune
repo sync -j1 --fail-fast
git clone https://github.com/kitw4y/DeviceTree.git -b syberia-14 device/xiaomi/lancelot
git clone https://gitlab.com/MT6768Lab/CommonDeviceTree.git -b 13 device/xiaomi/mt6768-common
git clone https://gitlab.com/MT6768Lab/KernelTree.git -b 13 kernel/xiaomi/mt6768
git clone https://gitlab.com/MT6768Lab/VendorTree.git -b 13 vendor/xiaomi
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr -b lineage-20 device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek -b lineage-20 hardware/mediatek
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 prebuilts/clang/host/linux-x86
    
# build rom  
source build/envsetup.sh
lunch syberia_lancelot-eng
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
mka bacon
