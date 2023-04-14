#!/usr/bin/env bash

: "${PREFIX:="$HOME/.lv2"}"

meson builddir
ninja -C builddir

rm -rf $PREFIX/plugin-name.lv2
mkdir -p $PREFIX/plugin-name.lv2
cp {plugin-name,manifest}.ttl builddir/plugin-name.{so,dylib,dll} $PREFIX/dynamite.lv2/