
# Docker-Karaf

Compared to the [original image](https://hub.docker.com/r/apache/karaf/tags), we add some custom files:

- `etc/users.properties` to allow SSH access for user *karaf*
- `etc/org.apache.karaf.management.cfg` to enable remote JMX+RMI access ( you may want to remap the default ports: 1099 and 44444 )


## Ready... Go

1. Build the image using:

```bash
build.sh
```

2. Run with:

```bash
docker-compose up -d
```



## JMX + RMI

`service:jmx:rmi://localhost:44444/jndi/rmi://localhost:1099/karaf-root`


Refer to [Karaf manual](https://karaf.apache.org/manual/latest/#_monitoring_and_management_using_jmx)