#!/usr/bin/env bash

set -e -u -o pipefail

perl -i -p -e 's{!libtool}{libtool}; s{!staticlibs}{staticlibs}' "$1"
perl -i -p -e 's{^(C(XX)?FLAGS=).*}{$1"-march=sandybridge -O3 -pipe"}' "$1"
perl -i -p -e 's{^(LDFLAGS=).*}{PKG_CONFIG="pkg-config --static"\n$1"-O1 -static -lm"}' "$1"
perl -i -p -e 's{^\#(MAKEFLAGS=).*}{$1"-j\$\(nproc\)"}' "$1"
perl -i -p -e 's{^\#(BUILDDIR=.*)}{$1}' "$1"
