FROM python:2.7

ENV RABBITMQ_ENDPOINT=$RABBITMQ_ENDPOINT
ENV RABBITMQ_EXCHANGE=$RABBITMQ_EXCHANGE
ENV RABBITMQ_GATEWAYID=$RABBITMQ_GATEWAYID
ENV PUBLISH_INTERVAL=$PUBLISH_INTERVAL

RUN apt-get update \
    && apt-get install wget

WORKDIR tmp

ADD publisher.py .
ADD dht22_stub.py .


RUN pip install pika

RUN mv dht22_stub.py dht22.py

CMD python publisher.py --amqp-url=$RABBITMQ_ENDPOINT --gatewayId=$RABBITMQ_GATEWAYID --exchange=$RABBITMQ_EXCHANGE --publish-interval=$PUBLISH_INTERVAL --log-path=/var/log/dht22