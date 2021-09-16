FROM yancccccc/ubuntu:latest
RUN mkdir /usr/local/frp \
    && cd /usr/local/frp \
    && wget https://github.com/fatedier/frp/releases/download/v0.37.1/frp_0.37.1_linux_amd64.tar.gz \
    && tar -zxvf frp_0.37.1_linux_amd64.tar.gz \
    && rm -f /usr/local/frp/frp_0.37.1_linux_amd64/frpc* \
    && rm -rf /usr/local/frp/frp_0.37.1_linux_amd64.tar.gz 

COPY frps.ini /usr/local/frp/frp_0.37.1_linux_amd64/frps.ini

VOLUME /usr/local/frp/frp_0.37.1_linux_amd64

CMD [ "sh", "-c", "./usr/local/frp/frp_0.37.1_linux_amd64/frps -c ./usr/local/frp/frp_0.37.1_linux_amd64/frps.ini" ]