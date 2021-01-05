#!/bin/bash

# 安装
rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
yum install ffmpeg ffmpeg-devel -y


# 视频截帧 每秒截取25帧
ffmpeg -i output.mp4 -r 25 image-%05d.jpeg


# 视频旋转90度
ffmpeg -i input.mp4 -metadata:s:v rotate="90" -codec copy output.mp4

#  将多个文件合并成一个文件
ffmpeg -i "concat:1.ts|2.ts|3.ts" -acodec copy -vcodec copy final30.mp4
