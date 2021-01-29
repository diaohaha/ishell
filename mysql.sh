#!/bin/bash


# 表导出与导入
mysqldump -h 127.0.0.1 -P 3306  -uroot -proot mydb t_my_table > tmp.sql;
mysql -h 127.0.0.1 -P 3306 -uroot -proot mydb -e "source tmp.sql;"


