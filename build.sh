#! /bin/bash
#

# This file is 
USAGE="Usage: build.sh [OPTIONS]
Builds an image.

Usage:
 build.sh bitbake <same arguments as bitbake>
 build.sh runqemu qemux86
"

if [ -z "$*" ]; then
    usage
fi

OE_INIT="../sources/bayrouni-yocto/"
. ${OE_INIT}/oe-init-build-env . >/dev/null 2>&1

$@ || \
    FAILED "$*"

