FROM rabbitmq:3.6-management-alpine
MAINTAINER Davin Bao davin.bao@gmail.com

COPY rabbitmq-cluster /usr/local/bin/
COPY pre-entrypoint.sh /

RUN set -xe \
    && chmod +x /usr/local/bin/rabbitmq-cluster \
    && chmod +x /pre-entrypoint.sh \
    && mkdir /var/log/rabbitmq \
    && touch /var/log/rabbitmq/rabbitmq.log

ENTRYPOINT ["/pre-entrypoint.sh"]

CMD ["rabbitmq-cluster"]
