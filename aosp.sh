# sync rom
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs --depth=1
git clone https://github.com/kitw4y/local_manifest.git --depth 1 -b RisingOS-14 .repo/local_manifests
rm -rf prebuilts/clang/host/linux-x86/clang-latest external/chromium-webview
repo sync -c -j4 --force-sync --no-clone-bundle --no-tags
    
# build rom  
rm -rf toolchain/pgo-profiles
git clone https://android.googlesource.com/toolchain/pgo-profiles toolchain/pgo-profiles
sudo apt install ccache -y
source build/envsetup.sh 
opt_patch
riseup lancelot userdebug
croot
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
ascend
