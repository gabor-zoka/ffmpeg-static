#!/usr/bin/env bash

set -e -u -o pipefail

# Short-cuts
r=/mnt/gl.sys/chroot
p=/home/gabor/sw/arch/pkg-static

cd /home/gabor/sw/ffmpeg-static/asp/libogg
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/aur/libvorbis-aotuv
sudo makechrootpkg -T -c -r $r -I $p/libogg-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/zlib
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/bzip2
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/xz
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/x265
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/x264
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/lame
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/aom
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libsndfile
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libbs2b
sudo makechrootpkg -T -c -r $r -I $p/libsndfile-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/dav1d
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libsoxr
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libfdk-aac
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libvpx
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/opus
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/speexdsp
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/speex
sudo makechrootpkg -T -c -r $r -I $p/libogg-*.pkg.tar.zst -I $p/speexdsp-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/vid.stab
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libwebp
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libpng
sudo makechrootpkg -T -c -r $r -I $p/zlib-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/expat
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/freetype2
sudo makechrootpkg -T -c -r $r -I $p/zlib-*.pkg.tar.zst -I $p/bzip2-*.pkg.tar.zst -I $p/libpng-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/fontconfig
sudo makechrootpkg -T -c -r $r -I $p/expat-*.pkg.tar.zst -I $p/freetype2-*.pkg.tar.zst -I $p/zlib-*.pkg.tar.zst -I $p/bzip2-*.pkg.tar.zst -I $p/libpng-*.pkg.tar.zst

cd /home/gabor/sw/ffmpeg-static/asp/fribidi
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/asp/libass
sudo makechrootpkg -T -c -r $r -I $p/fontconfig-*.pkg.tar.zst -I $p/expat-*.pkg.tar.zst -I $p/freetype2-*.pkg.tar.zst -I $p/zlib-*.pkg.tar.zst -I $p/bzip2-*.pkg.tar.zst -I $p/libpng-*.pkg.tar.zst -I $p/fribidi-*.pkg.tar.zst

