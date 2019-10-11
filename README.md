# Pound

Pound is a reverse-proxy and load-balancer (http://www.apsis.ch/pound).

This Dockerfile compiles Pound using the modified source from the github repository (https://github.com/graygnuorg/pound).

# Run in Docker

Run with test configuration:
```
docker run [-p 80:80] [-p 443:443] --mount 'src:<path-to-pound-cfg>,dst:/usr/local/etc/pound/pound.cfg' secoresearch/pound
```

For custom configuration, use appropriate docker command, e.g.
```
docker run -p 443:443 --mount 'src:<pound-cfg-source>,dst:/usr/local/etc/pound/pound.cfg' --mount 'src:<cert-source>,dst:<cert-target>' secoresearch/pound
```

# Building

If you want to build the image yourself:
```
./docker-build.sh
```
