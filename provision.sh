#!/bin/sh

GRADLE_VER="4.7"
yum -y install wget
yum -y install java-11-openjdk-devel
yum -y install unzip

wget https://services.gradle.org/distributions/gradle-${GRADLE_VER}-bin.zip
unzip gradle-${GRADLE_VER}-bin.zip -d /opt/gradle
ßexport PATH=$PATH:/opt/gradle/gradle-${GRADLE_VER}-bin.zip
ßEOF

cat >> ~/.bashrc <<EOF
