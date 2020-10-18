#!/usr/bin/env bash

set -e -u -o pipefail

cd ~/sw/arch/pkg-static

ls --color=never --quoting-style=literal\
    aom-*\
    dav1d-*\
    lame-*\
    libbs2b-*\
    libfdk-aac-*\
    libsoxr-*\
    libvorbis-aotuv-*\
    libvpx-*\
    libwebp-*\
    opus-*\
    speex-*\
    vid.stab-*\
    x264-*\
    x265-* | perl -lpe 's{-\d+-x86_64.pkg.tar.zst$}{}' | tr \\n ' '
