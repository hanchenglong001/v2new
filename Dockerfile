FROM teddysun/v2ray
EXPOSE 80
USER root
WORKDIR /etc/v2ray
COPY . .
ENV TZ=Asia/Shanghai
CMD [ "/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json" ]

