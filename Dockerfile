ARG DISTRO=alpine
ARG DISTRO_VARIANT=3.20

FROM docker.io/tiredofit/${DISTRO}:${DISTRO_VARIANT}
LABEL maintainer="Dave Conroy (github.com/tiredofit)"

ENV AIRSONIC_VERSION=11.1.4-SNAPSHOT.20240716142846 \
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
