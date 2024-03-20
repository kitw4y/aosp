# build rom  
git config --global user.email lang@mail.com
git config --global user.name lang
git config --global --add safe.directory /tmp/src/android/development
. build/envsetup.sh 
riseup lancelot userdebug
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
export ALLOW_MISSING_DEPENDENCIES=true
ascend
