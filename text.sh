#!/bin/bash


# 按照某一列排序 -k
ps -ef | grep pushlive | sort -k 10


# 批量替换所有文件中的某一字符
find . -name "*.go" | xargs  sed -i "" 's/code/github/g'

# 文件中多行合并成一行
cat a.txt | tr '\n' ','


# 求文件的交集 并集 差集

# 交集
sort a.txt b.txt | uniq -d
# 并集
sort a.txt b.txt | uniq 
# 差集 a.txt-b.txt:
sort a.txt b.txt b.txt | uniq -u


# 文件分割

split -l 1000 tmp.txt   # 生成 a.aa a.ab ... 每个文件1000行   
