#
# postfix
#
FROM        alpine:3.6
LABEL       vendor="jack6.liu"
RUN         apk update &&                                 \
            apk --no-cache add openntpd &&                \
            echo 'listen on *' >> /etc/ntpd.conf &&       \
            rm -rf /var/cache/apk/*
EXPOSE      123/udp
ENTRYPOINT  ["ntpd", "-s", "-d"]