#!/bin/bash

# make O=out ARCH=arm64 r8q_defconfig

export PATH=/workspace/server/tools/gcc-arm64/bin:$PATH

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      r8q_defconfig

make -j$(nproc --all) O=out \
                      ARCH=arm64 \
                      CROSS_COMPILE=aarch64-linux-gnu- \
                      Image.gz

