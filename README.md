# Inception

## Overview
Inception is a project from the 42 Network curriculum that introduces you to the concepts of virtualization,
containerization, and system orchestration using Docker.

The goal is to create a mini infrastructure composed of multiple services running in isolated containers,
communicating through a custom network.

## Project Objectives
- Set up a personalized web infrastructure with NGINX as a reverse proxy server
- WordPress with PHP-FPM for dynamic content management
- MariaDB as the database backend
- Each service runs in its own container
- All services are connected in a Docker network
- Data persistence using volumes

## Project Structure
```
inception/
  srcs/
    docker-compose.yml
  requirements/
    nginx/
    wordpress/
    mariadb/
  .env
Makefile
```

## Container Architecture
```
+---------+
|  NGINX  |
+---------+
     ↓
+-----------+
| WordPress |
+-----------+
     ↓
+----------+
| MariaDB  |
+----------+
```

## Network Topology
```
+---------+       HTTPS       +----------+
|  NGINX  | <---------------> | MariaDB  |
+---------+                   +----------+
```

