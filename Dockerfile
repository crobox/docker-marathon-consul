FROM alpine:3.9

RUN wget -O marathon-consul.tar.gz "https://github.com/allegro/marathon-consul/releases/download/1.5.1/marathon-consul_1.5.1_linux_386.tar.gz" && \
	tar -xvzf marathon-consul.tar.gz && \
	rm marathon-consul.tar.gz && \
	mv marathon-consul_1.5.1_linux_386 marathon-consul

EXPOSE 4000

ENTRYPOINT ["/marathon-consul/marathon-consul"]
