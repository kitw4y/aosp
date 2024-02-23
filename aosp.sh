# sync rom
rm -rf .repo/local_manifests
mkdir lsng
cd lsng
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
repo sync -j15 --fail-fast
git clone https://github.com/kitw4y/DeviceTree.git -b cipher device/xiaomi/lancelot
git clone https://gitlab.com/MT6768Lab/CommonDeviceTree.git -b 14 device/xiaomi/mt6768-common
git clone https://gitlab.com/MT6768Lab/KernelTree.git -b 13 kernel/xiaomi/mt6768
git clone https://gitlab.com/MT6768Lab/CommonVendorTree.git -b 14 vendor/xiaomi/mt6768-common
git clone https://gitlab.com/MT6768Lab/VendorTree.git -b 14 vendor/xiaomi/lancelot
git clone https://github.com/orkunergun/android_device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr
git clone https://github.com/orkunergun/android_hardware_mediatek -b lineage-21 hardware/mediatek
git clone https://github.com/orkunergun/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
    
# build rom  
rm -rf toolchain/pgo-profiles
git clone https://android.googlesource.com/toolchain/pgo-profiles toolchain/pgo-profiles
sudo apt update
sudo apt install ccache -y
source build/envsetup.sh 
lunch cipher_lancelot-userdebug
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
mka bacon
