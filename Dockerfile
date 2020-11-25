FROM centos:centos7.4.1708
RUN yum -y install vim
RUN yum -y install net-tools
RUN mkdir -p /opt/gohangout
RUN mkdir -p /etc/gohangout/conf.d/
ADD gohangout /opt/gohangout/
RUN chmod +x  /opt/gohangout/gohangout
RUN ln -s /opt/gohangout/gohangout /usr/local/bin/gohangout