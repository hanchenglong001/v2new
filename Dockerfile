FROM teddysun/v2ray
EXPOSE 80
USER root


COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir /etc/v2ray /usr/local/v2ray
COPY config.json /etc/v2ray/
COPY entrypoint.sh /usr/local/v2ray/
