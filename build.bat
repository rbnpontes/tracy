@echo off

echo Building Windows
CALL cmake -S . -B ./build-windows -DTRACY_ENABLE=ON -DTRACY_FIBERS=ON^
    -DTRACY_MANUAL_LIFETIME=ON -DTRACY_DELAYED_INIT=ON -DBUILD_SHARED_LIBS=ON^
    -DCMAKE_BUILD_TYPE="Release" 
CALL cmake --build build-windows --config Release
echo Finished

set abi=armeabi-v7a
echo Build Android %abi%
CALL cmake -S . -B ./build-android-%abi% -G "Ninja" -DANDROID_STL=c++_static -DCMAKE_SYSTEM_NAME=android^
    -DCMAKE_ANDROID_NDK=%NDK_ROOT% -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake^
    -DCMAKE_ANDROID_ARCH_ABI=%abi% -DANDROID_ABI=%abi% -DCMAKE_ANDROID_STL_TYPE=c++_static^
    -DBUILD_SHARED_LIBS=ON -DTRACY_ENABLE=ON -DTRACY_FIBERS=ON -DTRACY_MANUAL_LIFETIME=ON^
    -DTRACY_DELAYED_INIT=ON -DBUILD_SHARED_LIBS=ON -DTRACY_NO_CALLSTACK=ON^
    -DTRACY_NO_CALLSTACK_INLINE=ON -DTRACY_NO_CRASH_HANDLER=ON
CALL cmake --build ./build-android-%abi% --config Release
echo Finished


set abi=arm64-v8a
echo Build Android %abi%
CALL cmake -S . -B ./build-android-%abi% -G "Ninja" -DANDROID_STL=c++_static -DCMAKE_SYSTEM_NAME=android^
    -DCMAKE_ANDROID_NDK=%NDK_ROOT% -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake^
    -DCMAKE_ANDROID_ARCH_ABI=%abi% -DANDROID_ABI=%abi% -DCMAKE_ANDROID_STL_TYPE=c++_static^
    -DBUILD_SHARED_LIBS=ON -DTRACY_ENABLE=ON -DTRACY_FIBERS=ON -DTRACY_MANUAL_LIFETIME=ON^
    -DTRACY_DELAYED_INIT=ON -DBUILD_SHARED_LIBS=ON -DTRACY_NO_CALLSTACK=ON^
    -DTRACY_NO_CALLSTACK_INLINE=ON -DTRACY_NO_CRASH_HANDLER=ON
CALL cmake --build ./build-android-%abi% --config Release
echo Finished

set abi=x86
echo Build Android %abi%
CALL cmake -S . -B ./build-android-%abi% -G "Ninja" -DANDROID_STL=c++_static -DCMAKE_SYSTEM_NAME=android^
    -DCMAKE_ANDROID_NDK=%NDK_ROOT% -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake^
    -DCMAKE_ANDROID_ARCH_ABI=%abi% -DANDROID_ABI=%abi% -DCMAKE_ANDROID_STL_TYPE=c++_static^
    -DBUILD_SHARED_LIBS=ON -DTRACY_ENABLE=ON -DTRACY_FIBERS=ON -DTRACY_MANUAL_LIFETIME=ON^
    -DTRACY_DELAYED_INIT=ON -DBUILD_SHARED_LIBS=ON -DTRACY_NO_CALLSTACK=ON^
    -DTRACY_NO_CALLSTACK_INLINE=ON -DTRACY_NO_CRASH_HANDLER=ON
CALL cmake --build ./build-android-%abi% --config Release
echo Finished

set abi=x86_64
echo Build Android %abi%
CALL cmake -S . -B ./build-android-%abi% -G "Ninja" -DANDROID_STL=c++_static -DCMAKE_SYSTEM_NAME=android^
    -DCMAKE_ANDROID_NDK=%NDK_ROOT% -DCMAKE_TOOLCHAIN_FILE=%NDK_ROOT%/build/cmake/android.toolchain.cmake^
    -DCMAKE_ANDROID_ARCH_ABI=%abi% -DANDROID_ABI=%abi% -DCMAKE_ANDROID_STL_TYPE=c++_static^
    -DBUILD_SHARED_LIBS=ON -DTRACY_ENABLE=ON -DTRACY_FIBERS=ON -DTRACY_MANUAL_LIFETIME=ON^
    -DTRACY_DELAYED_INIT=ON -DBUILD_SHARED_LIBS=ON -DTRACY_NO_CALLSTACK=ON^
    -DTRACY_NO_CALLSTACK_INLINE=ON -DTRACY_NO_CRASH_HANDLER=ON
CALL cmake --build ./build-android-%abi% --config Release
echo Finished
