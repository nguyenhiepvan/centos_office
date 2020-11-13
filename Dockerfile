FROM centos:7

RUN yum update -y && yum install -y epel-release && yum update -y && \
    yum install libreoffice -y && \
    yum groupinstall -y "fonts" && \
    yum clean all && \
    rm -rf /var/cache/yum

COPY ./jodconverter_rest.jar /jodconverter/jodconverter_rest.jar

COPY ./fonts /usr/share/fonts/

RUN fc-cache -fv && fc-list | grep "VNI"




