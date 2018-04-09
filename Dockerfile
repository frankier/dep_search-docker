FROM alpine:3.7

MAINTAINER frankie@robertson.name

WORKDIR /root/

RUN apt-get update -y && apt-get install -y git libsqlite3-dev python-dev cython uwsgi python-flask python3-flask build-essential python3-requests python-requests python-yaml python3-yaml && apt-get clean

COPY setup.sh /root/
RUN bash setup.sh
COPY run.sh /root/
EXPOSE 5000
CMD bash /root/run.sh

ONBUILD COPY corpora.yaml /root/dep_search/webui/
ONBUILD COPY corpus_groups.yaml /root/dep_search/webui/
