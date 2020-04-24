FROM debian:buster

LABEL maintainer="Alexis Pereda <alexis@pereda.fr>"
LABEL version="1.0"
LABEL description="python3"

RUN apt update \
	&& apt install --no-install-recommends --no-install-suggests -y --force-yes python3 python3-pip git \
	&& rm -rf /var/lib/apt/lists/*

RUN pip3 install GitPython

ENTRYPOINT ["/scripts/start.py"]
