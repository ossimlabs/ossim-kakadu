FROM nexus-docker-public-group.ossim.io/centos:7

RUN ./configure --prefix=/usr/local \
            --enable-swscale --enable-avfilter --enable-avresample \
            --enable-libmp3lame --enable-libvorbis \
            --enable-librsvg --enable-libtheora --enable-libopenjpeg \
            --enable-libmodplug --enable-libsoxr \
            --enable-libspeex --enable-libass --enable-libbluray \
            --enable-lzma --enable-gnutls --enable-fontconfig --enable-libfreetype \
            --enable-libfribidi --disable-libjack --disable-libopencore-amrnb \
            --disable-libopencore-amrwb --disable-libxcb --disable-libxcb-shm --disable-libxcb-xfixes \
            --disable-indev=jack --disable-outdev=xv\
            --enable-sdl2 --disable-securetransport --mandir=/usr/local/share/man \
            --enable-shared --enable-pthreads --arch=x86_64 --enable-x86asm \
            --enable-gpl --enable-postproc --enable-libx264 
RUN /ffmpeg/make -j 8 install

RUN strip `find /usr/local/lib -type f`
RUN strip /usr/local/bin/* || true
