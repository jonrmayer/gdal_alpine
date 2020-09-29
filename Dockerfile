FROM centos:7.8.2003


RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7


RUN yum clean all && \
	yum -y install epel-release && \
	rpm --import http://download.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7 && \
	yum clean all && \
	yum --exclude=systemd*,util-linux*,libblkid*,libuuid*,libmount* -y update && \
	yum clean all && \
	rm -fr /var/cache/*
	
RUN yum -y install gcc-c++  gcc  libpng  && yum clean all

RUN rm -fr /var/cache/*
	

#RUN yum -y install SFCGAL-devel
