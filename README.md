# Pound

Pound is a reverse-proxy and load-balancer (http://www.apsis.ch/pound).

This Dockerfile compiles Pound using the modified source from the github repository (https://github.com/graygnuorg/pound).

# Run in Docker

```
docker run [-p 80:80] [-p 443:443] --mount 'src:<path-to-pound-cfg>,dst:/usr/local/etc/pound/pound.cfg' secoresearch/pound
```

# Building

If you want to build the image yourself:
```
docker build -t secoresearch/pound:latest .
```
