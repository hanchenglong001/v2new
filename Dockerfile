FROM teddysun/v2ray
EXPOSE 80
USER root


ENV UUID de04add9-5c68-8bab-950c-08cd5320df18
ENV VMESS_WSPATH /vmess

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir /etc/v2ray /usr/local/v2ray
COPY config.json /etc/v2ray/
COPY entrypoint.sh /usr/local/v2ray/
