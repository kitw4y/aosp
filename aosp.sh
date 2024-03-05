rm -rf .repo/local_manifests
rm -rf lsng 
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen-qpr
rm -rf prebuilts/clang/host/linux-x86/clang-latest external/chromium-webview
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
repo sync -j15 --fail-fast
sudo rm -rf device/xiaomi/lancelot
sudo rm -rf device/xiaomi/mt6768-common
sudo rm -rf kernel/xiaomi/mt6768
sudo rm -rf vendor/xiaomi/mt6768-common
sudo rm -rf vendor/xiaomi/lancelot
sudo rm -rf device/mediatek/sepolicy_vndr
sudo rm -rf hardware/mediatek
sudo rm -rf hardware/xiaomi
git clone https://github.com/kitw4y/device_xiaomi_lancelot.git -b cipher device/xiaomi/lancelot
git clone https://github.com/SuperiorOS-Devices/device_xiaomi_mt6768-common.git -b fourteen device/xiaomi/mt6768-common
git clone https://github.com/Projects-Corruption-Succubus/HM6768.git kernel/xiaomi/mt6768
git clone https://github.com/SuperiorOS-Devices/vendor_xiaomi_mt6768-common.git -b fourteen vendor/xiaomi
git clone https://github.com/orkunergun/android_device_mediatek_sepolicy_vndr -b lineage-21 device/mediatek/sepolicy_vndr
git clone https://github.com/Projects-Corruption-Succubus/android_hardware_mediatek.git hardware/mediatek
git clone https://github.com/Projects-Corruption-Succubus/android_hardware_xiaomi.git hardware/xiaomi
    
# build rom  
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
