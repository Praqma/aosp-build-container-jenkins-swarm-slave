[![Build Status](https://api.travis-ci.org/Praqma/aosp-build-container-jenkins-swarm-slave.svg?branch=master)](https://travis-ci.org/Praqma/aosp-build-container-jenkins-swarm-slave)
---
maintainer: andrey9kin
---
# aosp-build-container-jenkins-swarm-slave

## Intro
[Jenkins swarm slave](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin) to build Android Open Source Project

## Usage

Run the following command to connect this image as a slave to your Jenkins master. Replace ~/jenkins-slave with directory on the host where you would like to store files.
192.168.99.100:8080 - with the url to your Jenkins master.

```
docker run -d -v ~/jenkins-slave:/var/build/jenkins praqma/aosp-build-container-jenkins-swarm-slave -master http://192.168.99.100:8080 -executors 1 -fsroot /var/build/jenkins -labels aosp
```

To see full list of available options run the following

```
docker run --rm praqma/aosp-build-container-jenkins-swarm-slave -h
```
