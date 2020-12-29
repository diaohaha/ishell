#!/bin/bash


# 按照某一列排序 -k
ps -ef | grep pushlive | sort -k 10


# 批量替换所有文件中的某一字符
find . -name "*.go" | xargs  sed -i "" 's/code/github/g'

