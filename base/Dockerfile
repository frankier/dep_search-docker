FROM alpine:3.7

MAINTAINER frankie@robertson.name

WORKDIR /root/


RUN apk add --no-cache python git libsqlite3-dev python-dev cython uwsgi \
	python-flask build-essential python-requests python-yaml

COPY setup.sh /root/
RUN bash setup.sh
COPY run.sh /root/
EXPOSE 5000
CMD bash /root/run.sh

ONBUILD COPY corpora.yaml /root/dep_search/webui/
ONBUILD COPY corpus_groups.yaml /root/dep_search/webui/
