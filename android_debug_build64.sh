ANDROID_SDK=~/Android/Sdk
NDKROOT=$ANDROID_SDK/ndk-bundle
$ANDROID_SDK/cmake/3.6.4111459/bin/cmake --trace -G "Unix Makefiles" \
	-DCMAKE_MAKE_PROGRAM=$NDKROOT/prebuilt/linux-x86_64/bin/make \
	-DANDROID_LINKER_FLAGS=-Wl,--exclude-libs,libunwind.a  \
	-DCMAKE_BUILD_TYPE=Debug \
	-DANDROID_ABI=arm64-v8a \
	-DANDROID_NATIVE_API_LEVEL=android-22 \
	-DCMAKE_INSTALL_PREFIX=install \
	-DASSIMP_BUILD_TESTS=OFF \
	-DANDROID_TOOLCHAIN_NAME=aarch64-linux-android-4.9 \
	-DANDROID_STL=c++_shared \
	-DANDROID_STL_FORCE_FEATURES=ON \
        -DANDROID_LINKER_FLAGS=-lz \
	-DCMAKE_TOOLCHAIN_FILE=$NDKROOT/build/cmake/android.toolchain.cmake \
	-DANDROID_TOOLCHAIN=clang
$NDKROOT/prebuilt/linux-x86_64/bin/make -j12

