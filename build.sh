export PATH=$PATH:`pwd`/../my-toolchain/bin

target_host=arm-linux-androideabi
export AR=$target_host-ar
export AS=$target_host-clang
export CC=$target_host-clang
export CXX=$target_host-clang++
export LD=$target_host-ld
export STRIP=$target_host-strip
export CFLAGS="-fPIE -fPIC"
export LDFLAGS="-pie"

./configure --host=arm-linux-androideabi --prefix=`pwd`/output --with-sysroot="/usr/local/android-sdk/ndk/20.0.5594570/sysroot/usr/lib/arm-linux-androideabi/"

make install
