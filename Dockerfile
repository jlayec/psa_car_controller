FROM 	debian:buster-slim

RUN	ls -l

RUN	apt-get update; \
	apt-get install -y --no-install-recommends \
		python3 python3-pip \
	; \
	rm -rf /var/lib/apt/lists/*

EXPOSE	5000/tcp

CMD	["python3","server.py -l 0.0.0.0 -r --remote-disable"]
