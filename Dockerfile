FROM ubuntu:latest

ENV TZ=UTC

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /files

# Install dependencies
RUN apt-get update && apt-get install -y wget xz-utils

RUN apt-get install -y python3 libegl1  libopengl0  libxcb-cursor0 fontconfig qtcreator qtbase5-dev qt5-qmake cmake

# Install Calibre
RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

# Set the entrypoint and default command as desired
ENTRYPOINT ["tail", "-f", "/dev/null"]
