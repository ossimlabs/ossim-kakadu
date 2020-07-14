#!/bin/bash

set -e
X264="x264-0.155-20180923-545de2f"

if [ ! -d "${dir}" ]; then
    wget -q https://s3.amazonaws.com/ossimlabs/dependencies/source/$X264.tgz -O $X264.tgz
    tar xvfz $X264.tgz
    rm -f $X264.tgz
fi
