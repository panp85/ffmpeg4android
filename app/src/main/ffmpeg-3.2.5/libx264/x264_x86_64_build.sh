# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

NDK=/home/panpan/tools/android-ndk-r15c

PLATFORM=$NDK/platforms/android-21/arch-x86_64/
TOOLCHAIN=$NDK/toolchains/x86_64-4.9/prebuilt/linux-x86_64
PREFIX=./android/x86_64

function build_one
{
./configure \
--prefix=$PREFIX \
--disable-shared \
--enable-static \
--disable-asm \
--enable-pic \
--enable-strip \
--host=x86_64-linux \
--cross-prefix=$TOOLCHAIN/bin/x86_64-linux-android- \
--sysroot=$PLATFORM \
--extra-cflags="-Os -fpic" \
--extra-ldflags="" \

make clean
make
make install
}

build_one

