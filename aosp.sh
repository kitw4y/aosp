# build rom  
source build/envsetup.sh 
lunch rising_lancelot-userdebug
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
export ALLOW_MISSING_DEPENDENCIES=true
mka bacon
