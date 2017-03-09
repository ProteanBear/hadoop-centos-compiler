#!/bin/bash

# 设置默认编译版本(支持传参)
version=${1:-2.7.3}

# 进入源代码目录
cd /hadoop-$version-src

# 开始编译
echo -e "\n\ncompile hadoop $version..."
mvn package -Pdist,native -DskipTests -Dtar

# 输出结果
if [[ $? -eq 0]]; then
    echo -e "\n\ncompile hadoop $version success!\n\n"
else
    echo -e "\n\ncompile hadoop $version fail!\n\n"
fi
