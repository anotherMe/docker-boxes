# docker-boxes

My collection of **Dockerfile** and **docker-compose.yml** .

## cadvisor

cAdvisor container - Analyzes resource usage and performance characteristics of running containers.

See [github](https://github.com/google/cadvisor) for more info.

## kafka

Compose file including services:

* Kafka
* Zookeeper
* [Kafdrop](https://github.com/obsidiandynamics/kafdrop)

## kafka jmx

Same as the previous box but with JMX configured for remote access.

## mysql



## postgres10

Alpine based container with PostgreSQL version 10.

## owncloud

*Owncloud* container with separate *mariadb* and *redis* containers, as per [this guide](https://doc.owncloud.com/server/admin_manual/installation/docker/).



## taiga

[Taiga](https://taiga.io/) is a project management platform for agile developers & designers and project managers who want a beautiful tool that makes work truly enjoyable.

Pay attention to the **TAIGA_HOST** parameter:

- Taiga image sets up a virtual host (eg: taiga.lan) and you'll need to modify your DNS or your hosts file accordingly

- if you expose your container on a different port than port 80, you need to modify TAIGA_HOST parameter accordingly ( eg: TAIGA_HOST=taiga.lan:8084 )


## MISC

### MySQL 5.7

`docker run --name mysql57 -e MYSQL_ROOT_PASSWORD=secret3! -p 3306:3306 --restart unless-stopped -d mysql:5.7`

### MySQL 5.1

`docker run --name mysql51 -e MYSQL_ROOT_PASSWORD=secret3! -p 3306:3306 --restart unless-stopped -d grugnog/mysql-5.1:latest`

### Oracle in a Nutshell

`docker run -d -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true oracleinanutshell/oracle-xe-11g`

### Karaf

`docker run -d -p 8101:8101 -p 1099:1099 -p 44444:44444 --name mykaraf apache/karaf:latest`