FROM tiredofit/alpine:3.15

ENV AIRSONIC_VERSION=11.0.0-SNAPSHOT.20220129204202

RUN set -x && \
    addgroup -g 4040 airsonic && \
    adduser -S -D -H -h /dev/null -s /sbin/nologin -G airsonic -u 4040 airsonic && \
    apk update && \
    apk upgrade && \
    apk add -t .airsonic-run-deps \
               ffmpeg \
               flac \
               fontconfig \
               lame \
               mariadb-client \
               openjdk14-jre \
               postgresql-client \
               ttf-dejavu \
               && \
     \
     mkdir -p /app && \
     curl -sSL https://github.com/airsonic-advanced/airsonic-advanced/releases/download/${AIRSONIC_VERSION}/airsonic.war -o /app/airsonic.war && \
     rm -rf /var/cache/apk/*

EXPOSE 4040

COPY install /
