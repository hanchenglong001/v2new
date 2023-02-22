FROM teddysun/v2ray
EXPOSE 80
USER root


ENV UUID de04add9-5c68-8bab-950c-08cd5320df18
ENV VMESS_WSPATH /vmess


RUN mkdir /etc/v2ray /usr/local/v2ray
COPY config.json /etc/v2ray/config.json
COPY entrypoint.sh /usr/local/v2ray/
RUN chmod a+x /usr/local/v2ray/entrypoint.sh 
RUN /usr/local/v2ray/entrypoint.sh

ENV TZ=Asia/Shanghai
CMD [ "/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json" ]
