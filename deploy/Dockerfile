FROM    registry.cn-hangzhou.aliyuncs.com/ghoulich-centos/centos:7.4.1708

LABEL   GKERISON  kerison.coding@foxmail.com

RUN     /bin/echo 'root:123456' |chpasswd
RUN     useradd kerison
RUN     /bin/echo 'kerison:123456' |chpasswd
RUN     /bin/echo -e "LANG=\"en_US.UTF-8\"" >/etc/default/local
RUN     yum update -y
RUN     yum install wget -y
WORKDIR /tmp
RUN     wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/10.0.1+10/fb4372174a714e6b8c52526dc134031e/jdk-10.0.1_linux-x64_bin.rpm"
RUN     rpm -ivh jdk-10.0.1_linux-x64_bin.rpm

EXPOSE  22
EXPOSE  80
CMD     /usr/sbin/sshd -D