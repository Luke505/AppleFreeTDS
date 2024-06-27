#!/bin/sh

echo "== Start =="

cd "$(dirname "$0")" || exit 1

echo "== Running \`git clone\` =="

git clone https://github.com/openssl/openssl.git || exit 1
cd openssl || exit 1
git checkout OpenSSL_1_0_2u || exit 1

echo "== Running \`git apply\` =="

git apply ../openssl-1.0.2u-darwin-arm64.patch || exit 1

echo "== Running \`cd ... && cp ... && rm ...\` =="

cd .. || exit 1

export MACOSX_DEPLOYMENT_TARGET=10.14
cp -r openssl/ openssl-1.0.2u-arm64 || exit 1
cp -r openssl/ openssl-1.0.2u-x86_x64 || exit 1
rm -rf openssl || exit 1

echo "== Build for x86_64 =="

cd openssl-1.0.2u-x86_x64/ || exit 1
./Configure darwin64-x86_64-cc shared || exit 1
make || exit 1

echo "== Build for arm64 =="

cd ../openssl-1.0.2u-arm64/ || exit 1
./Configure enable-rc5 zlib darwin64-arm64-cc no-asm || exit 1
make || exit 1

echo "== Join builds =="

cd .. || exit 1
mkdir openssl-mac || exit 1
lipo -create openssl-1.0.2u-arm64/libcrypto.a openssl-1.0.2u-x86_x64/libcrypto.a -output openssl-mac/libcrypto.a || exit 1
lipo -create openssl-1.0.2u-arm64/libssl.a openssl-1.0.2u-x86_x64/libssl.a -output openssl-mac/libssl.a || exit 1

rm -rf openssl-1.0.2u-* || exit 1

cd openssl-mac/ || exit 1

echo "== Info files: libcrypto.a & libssl.a =="

file libcrypto.a libssl.a || exit 1

echo "== Cleaning =="

cd .. || exit 1
mv -f openssl-mac/* ../../macOS/ || exit 1
rm -rf openssl-mac || exit 1

echo "== Done =="