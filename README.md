# BPE Service Freemarker

This project provides a [Ratpack](https://ratpack.io/) based
[Freemarker](http://freemarker.incubator.apache.org)
web service used by [BPE](https://github.com/itp-world/email-bpe-elixir).

## Requirements

### Java 8 OpenJDK

```bash
$ sudo add-apt-repository ppa:openjdk-r/ppa
$ sudo apt-get update
$ sudo apt-get install openjdk-8-jdk
$ sudo update-alternatives --config java
$ sudo update-alternatives --config javac
```

### [Gradle](http://gradle.org/)

```bash
$ sudo add-apt-repository ppa:cwchien/gradle
$ sudo apt-get update
$ sudo apt-get install gradle
```

## Installation

### Get the sources:

```bash
$ git clone https://github.com/itp-world/bpe-service-freemarker.git
$ cd bpe-service-freemarker
```

### Get dependencies and compile:

```bash
$ gradle installApp
```

## Startup

```bash
$ cd build/install/bpe-service-freemarker
$ ./bin/bpe-service-freemarker
```
