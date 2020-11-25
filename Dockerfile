FROM debian:10

RUN apt-get update
RUN apt-get install -y dumb-init python3 python3-pip ffmpeg
RUN pip3 install youtube_dl
RUN mkdir -p /downloads

WORKDIR /downloads
VOLUME ["/downloads"]

RUN dumb-init youtube-dl --version

ENTRYPOINT ["dumb-init", "youtube-dl", "-f", "bestvideo+bestaudio"]
CMD ["--help"]
