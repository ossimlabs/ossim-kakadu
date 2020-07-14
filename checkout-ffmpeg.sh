#!/bin/bash

set -e

FFMPEG="ffmpeg-4.2"

if [ ! -d "${dir}" ]; then
    wget -q https://s3.amazonaws.com/ossimlabs/dependencies/source/$FFMPEG.tgz -O $FFMPEG.tgz
    tar xvfz $FFMPEG.tgz
    rm -f $FFMPEG.tgz
    mv $FFMPEG ffmpeg
fi
