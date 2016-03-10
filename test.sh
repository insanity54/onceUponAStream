#!/bin/bash

# vlc -I dummy \
# --mms-caching 0 \
# http://www.nasa.gov/55644main_NASATV_Windows.asx \
# vlc://quit \
# --sout='#transcode{width=320,height=240,fps=25,vcodec=h264,vb=256,venc=x264{aud,profile=baseline,level=30,keyint=30,ref=1},acodec=mp3,ab=96}:std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/var/www/streaming/mystream.m3u8'

/Applications/VLC.app/Contents/MacOS/VLC -I dummy /Users/chrisgrimmett/Documents/dls/TV/Revolution\ OS.avi vlc://quit --sout='#transcode{width=320,height=240,fps=25,vcodec=h264,vb=256,venc=x264{aud,profile=baseline,level=30,keyint=30,ref=1},acodec=mp3,ab=96}:std{access=livehttp{seglen=10,delsegs=false,numsegs=0,index=/Users/chrisgrimmett/scripts/onceUponAStream/dist/streaming/mystream.m3u8,index-url=http://127.0.0.1:8080/streaming/mystream-########.ts},mux=ts{use-key-frames},dst=/Users/chrisgrimmett/scripts/onceUponAStream/dist/streaming/mystream-########.ts}'
