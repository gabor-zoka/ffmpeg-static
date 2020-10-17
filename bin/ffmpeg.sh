r=/mnt/gl.sys/chroot
p=/home/gabor/sw/arch/pkg-static

cd /home/gabor/sw/ffmpeg-static/asp/ffmpeg
sudo makechrootpkg -T -c -r $r\
    -I $p/libvorbis-aotuv-*.pkg.tar.zst\
    -I $p/libogg-*.pkg.tar.zst\
    -I $p/xz-*.pkg.tar.zst\
    -I $p/bzip2-*.pkg.tar.zst\
    -I $p/x265-*.pkg.tar.zst\
    -I $p/x264-*.pkg.tar.zst\
    -I $p/lame-*.pkg.tar.zst\
    -I $p/aom-*.pkg.tar.zst\
    -I $p/libsoxr-*.pkg.tar.zst\
    -I $p/libsndfile-*.pkg.tar.zst\
    -I $p/libbs2b-*.pkg.tar.zst\
    -I $p/dav1d-*.pkg.tar.zst
