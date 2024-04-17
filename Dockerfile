FROM ubuntu

ENV TZ=UTC

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update

RUN apt-get install -y -u calibre

WORKDIR files

ENTRYPOINT ["tail", "-f", "/dev/null"]
