# 镜像来源
FROM centos7-systemd

# 镜像创建者
MAINTAINER "ProteanBear"

# 运行命令安装环境依赖
# 使用 -y 同意全部询问
RUN yum update -y && \
    yum groupinstall -y "Development Tools" && \
    yum install -y wget \
                  java-1.7.0-openjdk \
                  protobuf-devel \
                  protobuf-compiler \
                  maven \
                  cmake \
                  pkgconfig \
                  openssl-devel \
                  zlib-devel \
                  gcc \
                  automake \
                  autoconf \
                  make

# 复制编辑脚本文件到镜像中
COPY compile.sh /root/compile.sh
# 设置脚本文件的可运行权限
RUN chmod +x /root/compile.sh
