# Preparation

As root:

    mkdir      /mnt/gl.sys/chroot
    mkarchroot /mnt/gl.sys/chroot/root base-devel

Get the stock `makepkg.conf`. This is only used for src and pkg dir (according to my experience).

As gabor:

    cp /mnt/gl.sys/chroot/root/etc/makepkg.conf ~/.makepkg.conf

    perl -i -p -e 's{^\#PKGDEST=.*}{PKGDEST=/home/gabor/sw/arch/pkg-static}' ~/.makepkg.conf
    perl -i -p -e 's{^\#SRCDEST=.*}{SRCDEST=/home/gabor/sw/arch/src}'        ~/.makepkg.conf

Update chroot `makepkg.conf` for static build. I also want moderate optimisation 
for older Sandybridge Intel, which still makes usable for most folks.

We need to make `makechrootpkg` sudo-able.

As root:

    # Build uses makepkg.conf
    perl -i -p -e 's{!libtool}{libtool}; s{!staticlibs}{staticlibs}' /mnt/gl.sys/chroot/root/etc/makepkg.conf
    perl -i -p -e 's{-march=.*}{-march=sandybridge -O3 -pipe"}'      /mnt/gl.sys/chroot/root/etc/makepkg.conf
    perl -i -p -e 's{^\#MAKEFLAGS=.*}{MAKEFLAGS="-j\$\(nproc\)"}'    /mnt/gl.sys/chroot/root/etc/makepkg.conf
    perl -i -p -e 's{^\#(BUILDDIR=.*)}{$1}'                          /mnt/gl.sys/chroot/root/etc/makepkg.conf

    echo 'gabor ALL=(root) NOPASSWD: /usr/bin/makechrootpkg *' >>/etc/sudoers.d/10-local

# Build

As gabor:

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

    /home/gabor/sw/ffmpeg-static/ffmpeg.sh

