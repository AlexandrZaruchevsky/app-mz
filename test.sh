#!/usr/bin/env bash
DIR_CURRENT=$(pwd)
export MAVEN_HOME="$DIR_CURRENT/maven/apache-maven-3.6.3"
export JAVA_HOME="/home/az/develop/java/jdk-11.0.2"
echo $MAVEN_HOME
export PATH="$JAVA_HOME/bin:$MAVEN_HOME/bin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin"
#echo $PATH
java --version
mvn --version


#current folder
#DIR=$(pwd)
#echo "$DIR"