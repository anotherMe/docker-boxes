
FROM apache/karaf:4.4.2

# Useful when working inside the containers
RUN apt update && apt install -y vim net-tools

ADD ./etc/* /opt/apache-karaf/etc/
ADD ./deploy/* /opt/apache-karaf/deploy/

