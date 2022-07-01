FROM rabbitmq:3.8.0-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

RUN usermod -d /opt/rabbitmq rabbitmq

ENV HOME=/opt/rabbitmq

USER rabbitmq:rabbitmq

RUN mkdir -m0700 /var/lib/rabbitmq/.ssh
