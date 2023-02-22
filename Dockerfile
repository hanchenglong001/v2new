FROM teddysun/v2ray
EXPOSE 80
USER root

WORKDIR /etc/v2ray
ENV UUID de04add9-5c68-8bab-950c-08cd5320df18
ENV VMESS_WSPATH /vmess

COPY . .
RUN chmod a+x entrypoint.sh \
    && entrypoint.sh


ENV TZ=Asia/Shanghai
CMD [ "/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json" ]


