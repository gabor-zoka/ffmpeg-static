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

    # Build uses this makepkg.conf
    ./bin/update-chroot-makepkg_conf.sh /mnt/gl.sys/chroot/root/etc/makepkg.conf

    echo 'gabor ALL=(root) NOPASSWD: /usr/bin/makechrootpkg *' >>/etc/sudoers.d/10-local

# Build

As gabor:

    ./bin/libs.sh
    ./bin/ffmpeg.sh
