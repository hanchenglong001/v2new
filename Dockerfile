FROM teddysun/v2ray
EXPOSE 80
USER root


ENV UUID de04add9-5c68-8bab-950c-08cd5320df18
ENV VMESS_WSPATH /vmess

COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /etc/v2ray/entrypoint.sh
RUN chmod a+x /etc/v2ray/entrypoint.sh \
    && sh /etc/v2ray/entrypoint.sh


ENV TZ=Asia/Shanghai
CMD [ "/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json" ]


