FROM java:alpine
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

WORKDIR /opt

RUN ln -s /gitbucket /root/.gitbucket

VOLUME /gitbucket

RUN apk update \
    && apk add openssl \
    && rm -rf /var/cache/apk/*

# download gitbucket
RUN wget https://github.com/gitbucket/gitbucket/releases/download/4.1/gitbucket.war

EXPOSE 8080 29418

ENTRYPOINT ["java", "-jar", "/opt/gitbucket.war"]
