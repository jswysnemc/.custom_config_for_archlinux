#!/bin/bash

# 读取文件中的时间戳
last_check_time=$(cat ~/.last_check_time)

# 获取当前时间的时间戳
current_time=$(date +%s)

# 计算时间差
time_diff=$(($current_time - $last_check_time))

# 如果时间差大于 1209600 s (14天)，输出过期并删除文件
if [ $time_diff -gt 1209600 ]; then
  echo "已经过期"
  rm -rf ~/.config/navicat
  rm -rf ~/.config/dconf/user
  # 将当前时间的时间戳覆盖写入文件
  echo $current_time > ~/.last_check_time
else
  echo "未过期"
  # 如果没有过期，什么都不做
fi


