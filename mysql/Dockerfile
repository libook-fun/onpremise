FROM mysql:5.6

ENV TIMEZONE=Asia/Shanghai

RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime && echo $TIMEZONE > /etc/timezone
