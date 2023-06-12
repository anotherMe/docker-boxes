
# Docker-Karaf

Compared to the [original image](https://hub.docker.com/r/apache/karaf/tags), we added some custom files:

- `etc/users.properties` to allow SSH access for user *karaf*
- `etc/org.apache.karaf.management.cfg` to enable remote JMX+RMI access ( you may want to remap the default ports: 1099 and 44444 )
- `etc/org.apache.karaf.features.cfg` install some features ( actually *decanter*, *decanter-collector-jmx-camel* ) and needed repos
- `etc/org.apache.karaf.decanter.collector.jmx-camel.cfg` set credentials used to connect to JMX

- `deploy/sample.xml` install a sample application that logs a message every 2 seconds


## Ready... Go

1. Build the image using:

```bash
build.sh
```

2. Run with:

```bash
docker-compose up -d
```



## Connect to JMX

To connect from *VisualVM*, running on the same host of the docker container:

`service:jmx:rmi://localhost:44444/jndi/rmi://localhost:1099/karaf-root`


Refer to [Karaf manual](https://karaf.apache.org/manual/latest/#_monitoring_and_management_using_jmx)
