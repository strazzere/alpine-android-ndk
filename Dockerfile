FROM alpine:3.16

LABEL maintainer "Tim Strazzere"

ENV NDK_VERSION "r25b"
ENV ANDROID_NDK_HOME /opt/android-ndk

# Dependencies
RUN apk update \
 && apk upgrade \
 && apk add gcompat bash
# Download, uncompress and finalize location
RUN mkdir /opt/android-ndk-tmp && cd /opt/android-ndk-tmp \
 && wget -q https://dl.google.com/android/repository/android-ndk-${NDK_VERSION}-linux.zip \
 && unzip ./android-ndk-${NDK_VERSION}-linux.zip \
 && mv ./android-ndk-${NDK_VERSION} /opt/android-ndk \
 && rm -rf /opt/android-ndk-tmp

# Add to PATH
ENV PATH ${PATH}:${ANDROID_NDK_HOME}
