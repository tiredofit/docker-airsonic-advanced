FROM docker.io/tiredofit/alpine:3.19

ENV AIRSONIC_VERSION=11.1.3-SNAPSHOT.20240126222220 \
    IMAGE_NAME="tiredofit/airsonic-advanced" \
    IMAGE_REPO_URL="https://github.com/tiredofit/docker-airsonic-advanced/"

RUN source /assets/functions/00-container && \
    set -x && \
    addgroup -g 4040 airsonic && \
    adduser -S -D -H -h /dev/null -s /sbin/nologin -G airsonic -u 4040 airsonic && \
    package update && \
    package upgrade && \
    package install .airsonic-run-deps \
               ffmpeg \
               flac \
               fontconfig \
               lame \
               mariadb-client \
               openjdk17-jre \
               postgresql-client \
               ttf-dejavu \
               && \
     \
     mkdir -p /app && \
     curl -sSL https://github.com/kagemomiji/airsonic-advanced/releases/download/${AIRSONIC_VERSION}/airsonic.war -o /app/airsonic.war && \
     package cleanup

EXPOSE 4040

COPY install /
