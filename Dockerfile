FROM alpine:3.8
ARG TZ="Asia/Shanghai"
ENV TZ ${TZ}
RUN apk upgrade --update && apk add bash tzdata curl && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime
RUN mkdir -p /opt/gohangout
RUN mkdir -p /etc/gohangout/conf.d/
ADD gohangout /opt/gohangout/
RUN chmod +x  /opt/gohangout/gohangout
RUN ln -s /opt/gohangout/gohangout /usr/local/bin/gohangout
