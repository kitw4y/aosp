# build rom  
git config --global user.email lang@mail.com
git config --global user.name lang
git config --global --add safe.directory /tmp/src/android/development
git config --global --add safe.directory /tmp/src/android/device/generic/common
git config --global --add safe.directory /tmp/src/android/device/generic/common
git config --global --add safe.directory /tmp/src/android/device/google/atv
git config --global --add safe.directory /tmp/src/android/device/google/contexthub
git config --global --add safe.directory /tmp/src/android
git config --global --add safe.directory /tmp/src/android/device/lineage/atv
git config --global --add safe.directory /tmp/src/android/device/lineage/car
git config --global --add safe.directory /tmp/src/android/device/lineage
git config --global --add safe.directory /tmp/src/android/device/qcom/sepolicy
git config --global --add safe.directory /tmp/src/android/device/qcom/sepolicy-legacy-um
sudo git config --system --add safe.directory '*'
5731697441:AAGq5w6oTa3zJT5IZLc9QnjHGxJEt-4STOs
. build/envsetup.sh 
riseup lancelot userdebug
export BUILD_USERNAME=lang
export BUILD_HOSTNAME=lang            
export KBUILD_BUILD_USER=lang    
export KBUILD_BUILD_HOST=lang
export TZ=Asia/Jakarta #put before last build command 
export ALLOW_MISSING_DEPENDENCIES=true
mka clean
ascend
