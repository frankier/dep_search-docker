FROM alpine:3.7

MAINTAINER frankie@robertson.name

WORKDIR /root/


RUN apk add --no-cache python2 git sqlite-libs sqlite-dev python2-dev \
	cython cython-dev uwsgi py2-flask build-base py2-requests \
	py2-yaml bash

COPY setup.sh /root/
RUN bash setup.sh
COPY run.sh /root/
EXPOSE 5000
CMD bash /root/run.sh

ONBUILD COPY corpora.yaml /root/dep_search/webapi/
ONBUILD COPY corpus_groups.yaml /root/dep_search/webapi/
