# sync rom
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs
git clone https://github.com/kitw4y/local_manifest.git --depth 1 -b RisingOS-14 .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
    
# build rom  
rm -rf toolchain/pgo-profiles
git clone https://android.googlesource.com/toolchain/pgo-profiles toolchain/pgo-profiles
. build/envsetup.sh 
lunch rising_lancelot-userdebug   
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
m bacon
