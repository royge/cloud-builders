FROM gcr.io/cloud-builders/docker

RUN curl -o go1.13.5.linux-amd64.tar.gz \
	https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz

RUN tar -C /usr/local/ -xzf go1.13.5.linux-amd64.tar.gz

RUN apt-get -y install build-essential

ADD ./entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

RUN rm go1.13.5.linux-amd64.tar.gz

ENTRYPOINT ["/root/entrypoint.sh"]
