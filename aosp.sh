source build/envsetup.sh
lunch cipher_lancelot-userdebug
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export INLINE_KERNEL_BUILDING=true
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
mka bacon
