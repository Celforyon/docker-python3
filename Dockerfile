FROM debian:buster

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="1.0"
LABEL description="python3"

RUN apt update \
	&& apt install --no-install-recommends --no-install-suggests -y --force-yes python3 git \
	&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/scripts/start.py"]
