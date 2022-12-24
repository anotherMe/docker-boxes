
# Docker-Karaf

Just doing a custom build here, based on the [original image](https://hub.docker.com/r/apache/karaf/tags), in order to add some custom configuration files to the original image.

These are the modified files:

- `etc/users.properties` to allow SSH access for user *karaf*
- `org.apache.karaf.management.cfg` to enable remote JMX+RMI access ( you may want to remap the default ports: 1099 and 44444 )


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