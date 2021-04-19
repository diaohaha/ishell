
# 查询一个端口是否被占用
netstat -anp | grep 8400

# 查询主机TCP连接状况
netstat -n | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,”\t”,state[key]}'
