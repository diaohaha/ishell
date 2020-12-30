#!/bin/bash


# 视频截帧 每秒截取25帧
ffmpeg -i output.mp4 -r 25 image-%05d.jpeg


# 视频旋转90度
ffmpeg -i input.mp4 -metadata:s:v rotate="90" -codec copy output.mp4
