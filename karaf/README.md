
# Docker-Karaf

Compared to the [original image](https://hub.docker.com/r/apache/karaf/tags), I've added some custom files:

- `etc/users.properties` to allow SSH access for user *karaf*
- `etc/org.apache.karaf.features.cfg` install some features and needed repos

- `deploy/sample.xml` install a sample application that logs a message every 2 seconds


## Ready... Go

0. If needed, copy bundles in the deploy folder and configurations in the etc folder.

1. Build the image using:

```bash
build.sh
```

2. Run with:

```bash
docker-compose up -d
```


