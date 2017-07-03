FROM rabbitmq:3.6.9-management-alpine
MAINTAINER Davin Bao davin.bao@gmail.com

COPY rabbitmq-cluster /usr/local/bin/

RUN set -xe \
    && chmod +x /usr/local/bin/rabbitmq-cluster 

CMD ["rabbitmq-cluster"]
