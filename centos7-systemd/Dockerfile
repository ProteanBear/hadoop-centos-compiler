# 镜像来源
FROM centos:7

# 镜像创建者
MAINTAINER "ProteanBear"

# 设置一个环境变量
ENV container docker

# 运行命令
# 设置systemd
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

# 挂载一个本地文件夹
VOLUME [ "/sys/fs/cgroup" ]

# 设置容器启动时的执行命令
CMD ["/usr/sbin/init"]
