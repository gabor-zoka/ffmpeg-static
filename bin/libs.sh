#1/usr/bin/env bash

set -e -u -o pipefail

# Short-cuts
r=/mnt/gl.sys/chroot
p=/home/gabor/sw/arch/pkg-static

cd /home/gabor/sw/ffmpeg-static/asp/libogg
sudo makechrootpkg -T -c -r $r

cd /home/gabor/sw/ffmpeg-static/aur/libvorbis-aotuv
sudo makechrootpkg -T -c -r $r -I $p/libogg-*.pkg.tar.zst

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

