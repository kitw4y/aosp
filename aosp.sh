# sync rom
rm -rf .repo/local_manifests
repo init -u https://github.com/CipherOS/android_manifest.git -b fourteen
git clone https://github.com/kitw4y/local_manifest.git --depth 1 -b RisingOS-14 .repo/local_manifests
rm -rf prebuilts/clang/host/linux-x86/clang-latest external/chromium-webview
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
    
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
