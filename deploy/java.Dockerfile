FROM    registry.cn-hangzhou.aliyuncs.com/javacspring/java8:1.0

LABEL   GKERISON  kerison.coding@foxmail.com

RUN     /bin/echo 'root:123456' |chpasswd
RUN     /bin/echo -e "LANG=\"en_US.UTF-8\"" >/etc/default/local

EXPOSE  22
EXPOSE  80
CMD     java --version