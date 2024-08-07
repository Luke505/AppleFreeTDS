#!/bin/sh

echo "== Start =="

MAIN_DIR="$(dirname "$(readlink -f $0)")"

cd "$MAIN_DIR/src/freetds" || exit 1

echo "== Running \`Cleaning\` =="
git clean -xdf

echo "== Running \`autoreconf\` ... =="
autoreconf --install || exit 1

echo "== Running \`configure\` =="
./configure --disable-msdblib --disable-krb5 --enable-libiconv \
  --disable-mars --without-gnutls --disable-libiconv || exit 1

echo "== Running \`make\` =="
make || exit 1

echo "== Done =="