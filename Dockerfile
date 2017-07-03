FROM rabbitmq:3.6.10-management-alpine
MAINTAINER Davin Bao davin.bao@gmail.com

COPY rabbitmq-cluster /usr/local/bin/
COPY pre-entrypoint.sh /

RUN set -xe \
    && chmod +x /usr/local/bin/rabbitmq-cluster \
    && mkdir /var/log/rabbitmq/

EXPOSE 5672 15672 25672 4369 9100 9101 9102 9103 9104 9105
ENTRYPOINT ["/pre-entrypoint.sh"]
CMD ["rabbitmq-cluster"]
