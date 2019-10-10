FROM alpine:latest AS build

RUN apk add --no-cache git build-base autoconf automake openssl openssl-dev pcre-dev
WORKDIR /root
RUN git clone https://github.com/graygnuorg/pound.git
WORKDIR /root/pound
RUN ./bootstrap
RUN ./configure
RUN make

FROM alpine:latest
COPY --from=build /root/pound/pound /usr/local/sbin/pound
COPY --from=build /root/pound/poundctl /usr/local/bin/poundctl
user 9001

CMD [ "pound" ]
