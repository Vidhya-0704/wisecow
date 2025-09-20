FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat-openbsd && \
    apt-get clean

COPY wisecow.sh /opt/wisecow.sh
RUN chmod +x /opt/wisecow.sh

EXPOSE 4499

CMD ["/opt/wisecow.sh"]
