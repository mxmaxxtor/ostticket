FROM campbellsoftwaresolutions/osticket
MAINTAINER ryazanov <ryazanov@wildberries.ru>
# environment for osticket
ENV HOME=/data
# setup workdir
WORKDIR /data

RUN wget -nv -O /data/upload/include/i18n/ru.phar https://s3.amazonaws.com/downloads.osticket.com/lang/ru.phar
VOLUME ["/data/upload/include/plugins","/data/upload/include/i18n","/var/log/nginx"]
EXPOSE 80
CMD ["/data/bin/start.sh"]
