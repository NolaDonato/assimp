cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DANDROID_ABI=arm64-v8a -DANDROID_NATIVE_API_LEVEL=android-19 -DANDROID_FORCE_ARM_BUILD=TRUE -DCMAKE_INSTALL_PREFIX=install -DANDROID_STL=gnustl_static -DANDROID_STL_FORCE_FEATURES=ON -DCMAKE_TOOLCHAIN_FILE=/home/nola.donato/android-sdks/ndk-bundle/build/cmake/android.toolchain.cmake -DANDROID_TOOLCHAIN=gcc
make
cd lib
cp libassimp.so libassimp.so.debug

$ANDROID_SDK/ndk-bundle/toolchains//aarch64-linux-android-4.9/prebuilt/linux-x86_64/aarch64-linux-android/bin/strip libassimp.so

