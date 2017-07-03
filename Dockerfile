FROM rabbitmq:3.6.10-management-alpine
MAINTAINER Davin Bao davin.bao@gmail.com

COPY rabbitmq-cluster /usr/local/bin/
RUN chmod +x /usr/local/bin/rabbitmq-cluster

EXPOSE 5672 15672 25672 4369 9100 9101 9102 9103 9104 9105

CMD ["rabbitmq-cluster"]
