FROM centos:7
RUN yum install wget -y \
    && mkdir /usr/local/frp \
    && cd /usr/local/frp \
    && wget https://github.com/fatedier/frp/releases/download/v0.37.1/frp_0.37.1_linux_amd64.tar.gz \
    && tar -zxvf frp_0.37.1_linux_amd64.tar.gz \
    && rm -f /usr/local/frp/frp_0.37.1_linux_amd64/frpc \
    && rm -f /usr/local/frp/frp_0.37.1_linux_amd64/frpc.ini 

WORKDIR /usr/local/frp/frp_0.37.1_linux_amd64

COPY frps.ini /usr/local/frp/frp_0.37.1_linux_amd64/frps.ini

CMD [ "sh", "-c", "./frps -c ./frps.ini" ]

EXPOSE 7000
EXPOSE 7500
EXPOSE 6000
