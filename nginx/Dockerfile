FROM nginx:latest

# 设置时区
ENV TIMEZONE=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone && mkdir -p /tmp/www