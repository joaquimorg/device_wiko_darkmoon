echo $1
rootdirectory="$PWD"
# ---------------------------------


cd $rootdirectory
cd frameworks/native
echo "Applying frameworks/native patches..."
git apply $rootdirectory/device/wiko/darkmoon/patches/frameworks/native/*.patch
echo " "


cd $rootdirectory
cd hardware/libhardware
echo "Applying hardware/libhardware patches..."
git apply $rootdirectory/device/wiko/darkmoon/patches/hardware/libhardware/*.patch
echo " "

cd $rootdirectory
cd system/core
echo "Applying system/core patches..."
git apply $rootdirectory/device/wiko/darkmoon/patches/system/core/*.patch
echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory

