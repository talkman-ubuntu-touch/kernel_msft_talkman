# Zest Kernel (reBORN) Build Script
# Variant: bullhead
#
# Copyright (c) 2019, Laster K. (lazerl0rd). All rights reserved.

# Exports
export ARCH=arm64
export SUBARCH=arm
if [ -z "${CROSS_COMPILE+x}" ]; then
  export CROSS_COMPILE=~/android/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
fi

# Prepare
rm -rf out/
make clean
rm -rf ~/zestkernel-bullhead.log

# Build
clear
make zest_defconfig
make -j$(nproc) | tee -a ~/zestkernel-bullhead.log
