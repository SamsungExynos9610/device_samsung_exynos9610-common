echo "I: - Fixing Stuff on A50 Device Trees"
### Start ###

# Keystore patch
echo "Applying Keystore patch...";
cd system/security;
git apply ../../device/samsung/exynos9610-common/patch/Keystone.patch;
cd - 

# Light patch 
cd frameworks/base && wget https://raw.githubusercontent.com/sarthakroy2002/random-stuff/main/Patches/Fix-brightness-slider-curve-for-some-devices-a12l.patch && patch -p1 < *.patch && cd -

# BT calls fix 

cd system/bt;
git apply ../../device/samsung/exynos9610-common/.patch/BTCalls-On-Samsung.patch;
cd -
