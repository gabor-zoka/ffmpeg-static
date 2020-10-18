#!/usr/bin/env bash

set -e -u -o pipefail

r=/mnt/gl.sys/chroot
p=/home/gabor/sw/arch/pkg-static

cd /home/gabor/sw/ffmpeg-static/asp/ffmpeg
sudo makechrootpkg -T -c -r $r\
    -I $p/libvorbis-aotuv-*.pkg.tar.zst -I $p/libogg-*.pkg.tar.zst\
    -I $p/zlib-*.pkg.tar.zst\
    -I $p/xz-*.pkg.tar.zst\
    -I $p/bzip2-*.pkg.tar.zst\
    -I $p/x265-*.pkg.tar.zst\
    -I $p/x264-*.pkg.tar.zst\
    -I $p/lame-*.pkg.tar.zst\
    -I $p/aom-*.pkg.tar.zst\
    -I $p/libsoxr-*.pkg.tar.zst\
    -I $p/libbs2b-*.pkg.tar.zst -I $p/libsndfile-*.pkg.tar.zst\
    -I $p/dav1d-*.pkg.tar.zst\
    -I $p/libfdk-aac-*.pkg.tar.zst\
    -I $p/libvpx-*.pkg.tar.zst\
    -I $p/opus-*.pkg.tar.zst\
    -I $p/speex-*.pkg.tar.zst -I $p/speexdsp-*.pkg.tar.zst\
    -I $p/vid.stab-*.pkg.tar.zst\
    -I $p/libwebp-*.pkg.tar.zst\
    -I $p/freetype2-*.pkg.tar.zst -I $p/libpng-*.pkg.tar.zst\
    -I $p/fontconfig-*.pkg.tar.zst -I $p/expat-*.pkg.tar.zst\
    -I $p/fribidi-*.pkg.tar.zst\
    -I $p/libass-*.pkg.tar.zst\

