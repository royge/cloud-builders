FROM gcr.io/cloud-builders/docker

RUN curl -o go1.13.5.linux-amd64.tar.gz \
	https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz

RUN tar -C /usr/local/ -xzf go1.13.5.linux-amd64.tar.gz
RUN export PATH=$PATH:/usr/local/go/bin

ADD ./gitconfig /root/.gitconfig

RUN rm go1.13.5.linux-amd64.tar.gz

ENTRYPOINT ["/usr/local/go/bin/go"]
