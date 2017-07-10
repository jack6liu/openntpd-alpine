# Dockerfile for postfix on apline

## Usage

```bash
docker run                      \
       --detach                 \
       --name openntpd          \
       --restart always         \
       --cap-add SYS_TIME       \
       --cap-add SYS_NICE       \
       --publish 123:123/udp    \
       jack6liu/openntpd:latest
```

**NOTE** default configuration file is `/etc/ntpd.conf`, can be overwrite by `--volume`.