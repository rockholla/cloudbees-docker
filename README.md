# Docker-encapsulated CloudBees stuff

## Why use this project?

You can run Jenkins and CloudBees tools and services inside docker containers. Yeah, so what? Well, if you accidentally upgrade your Java version too early (I'm looking at me) and don't won't to spend the time downgrading it (because you're lazy or don't have the time, also looking at me). Or, if you do other things on your own machine with Java or otherwise that may be incompatible with the current Jenkins version or CloudBees tools/services, then you can rest assured that everything will run in a predictable environment via containers here. And we can destroy it when we want to bring it back up. Destroying is always fun and rewarding.

## Install Dependencies

* Docker/Docker Compose (see [Docker for Mac](https://www.docker.com/docker-mac) or [Docker for Windows](https://www.docker.com/docker-windows) for installing on your workstation)
