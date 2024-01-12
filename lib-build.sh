#!/bin/sh

echo "== Start =="

cd "$(dirname "$0")/src/freetds" || exit 1

echo "== Running \`Cleaning\` =="
git clean -xdf

echo "== Running \`autoreconf\` ... =="
autoreconf --install || exit 1

echo "== Running \`configure\` =="
./configure --with-openssl="$(dirname "$0")/include/openssl" --disable-msdblib --disable-krb5 --enable-libiconv \
  --disable-mars --without-gnutls || exit 1

echo "== Running \`make\` =="
make || exit 1

echo "== Done =="