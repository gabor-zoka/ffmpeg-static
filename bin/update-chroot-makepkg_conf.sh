#!/usr/bin/env bash

set -e -u -o pipefail

perl -i -p -e 's{!libtool}{libtool}; s{!staticlibs}{staticlibs}' "$1"
perl -i -p -e 's{^(C(XX)?FLAGS=).*}{$1"-march=sandybridge -O3 -pipe"}' "$1"
# -static is NOT the same as -Bstatic despite the man page.
#
# xz, bzip2, and libvpx all fail if I use -static with a crtbeginT error.
#
# As per https://stackoverflow.com/a/31681323, which is seriously underrated 
# comment, I changed -static to -Bstatic and all worked.
perl -i -p -e 's{^(LDFLAGS=).*}{PKG_CONFIG="pkg-config --static"\n$1"-O1 -Bstatic"}' "$1"
perl -i -p -e 's{^\#(MAKEFLAGS=).*}{$1"-j\$\(nproc\)"}' "$1"
perl -i -p -e 's{^\#(BUILDDIR=.*)}{$1}' "$1"
