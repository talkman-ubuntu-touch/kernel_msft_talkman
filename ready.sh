# Zest Kernel (reBORN) Build Script
# Variant: bullhead
#
# Copyright (c) 2019, Laster K. (lazerl0rd). All rights reserved.

# Additions

# Prepare
rm -rf out/
make clean
rm -rf ~/zestkernel-bullhead.log

# Build
clear
make ARCH=arm64 zest_defconfig
make -j$(nproc) ARCH=arm64 \
                SUBARCH=arm \
                CROSS_COMPILE=aarch64_be-linux-gnu- | tee -a ~/zestkernel-maple.log
