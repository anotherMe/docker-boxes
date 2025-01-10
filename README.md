# docker-boxes

My collection of **Dockerfile** and **docker-compose.yml** .

## azure-sql-edge

Official container images for Microsoft Azure SQL Edge for docker engine.

## cadvisor

cAdvisor container - Analyzes resource usage and performance characteristics of running containers.

## focalboard

[Focalboard](https://www.focalboard.com/) - Open source project management for technical teams

## kafka

Kafka service also including services Zookeeper and [Kafdrop](https://github.com/obsidiandynamics/kafdrop)

## kafka jmx

Same as the previous box but with **JMX** configured for remote access.

## keycloak

[Keycloak](https://www.keycloak.org/) adds authentication to applications and secures services with minimum effort.
No need to deal with storing users or authenticating users.

Keycloak provides user federation, strong authentication, user management, fine-grained authorization, and more.

## mailhog

[Mailhog](https://github.com/mailhog/MailHog) is an email testing tool for developers.


## opensearch

The [OpenSearch project](https://opensearch.org/about.html), created by Amazon, is a forked search project based on old versions of Elasticsearch and Kibana.

## owncloud

*Owncloud* container with separate *mariadb* and *redis* containers.

## postgres10

Alpine based container with *PostgreSQL version 10*.

## ember_sftp

[Ember stack sftp ](https://github.com/emberstack/docker-sftp) - Docker image for hosting a SFTP server 


## taiga

[Taiga](https://taiga.io/) is a project management platform for agile developers & designers and project managers who want a beautiful tool that makes work truly enjoyable.

## technitium_dnsserver

[Technitium DNS Server](https://technitium.com/dns/) - Self host a DNS server for privacy & security ( & more )


## tomcat85

*Tomcat 8.5* service with *PostgreSQL latest* service

## traggo

[Traggo](https://traggo.net/) - tag-based time tracking tool

## traefik

[Traefik](https://doc.traefik.io/traefik/) - open-source edge router

## wekan

[Wekan](https://wekan.github.io/) Open source kanban

## wordpress

*Wordpress latest* with *MySQL 5.7*


## MISC

### MySQL 5.7

`docker run --name mysql57 -e MYSQL_ROOT_PASSWORD=secret3! -p 3306:3306 --restart unless-stopped -d mysql:5.7`

### MySQL 5.1

`docker run --name mysql51 -e MYSQL_ROOT_PASSWORD=secret3! -p 3306:3306 --restart unless-stopped -d grugnog/mysql-5.1:latest`

### Oracle in a Nutshell 11g

`docker run -d -p 49161:1521 -e ORACLE_ALLOW_REMOTE=true oracleinanutshell/oracle-xe-11g`

### Karaf latest

`docker run -d -p 8101:8101 -p 1099:1099 -p 44444:44444 --name mykaraf apache/karaf:latest`