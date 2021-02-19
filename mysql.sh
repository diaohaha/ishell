#!/bin/bash


# 表导出与导入
mysqldump -h 127.0.0.1 -P 3306  -uroot -proot mydb t_my_table > tmp.sql;
mysql -h 127.0.0.1 -P 3306 -uroot -proot mydb -e "source tmp.sql;"


# 查询第n高的工资
select distinct(salary) from employee order by salary desc limit n-1,1;


# 观察是否有大量线程处于不正常的状态或特征
show processlist

# 查看sql执行使用索引
explain ****
