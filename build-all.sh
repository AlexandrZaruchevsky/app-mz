#!/usr/bin/env bash
export DIR_CURRENT=$(pwd)
export DIR_DOWNLOAD="$DIR_CURRENT/download"
export BACKEND_FOLDER="$DIR_CURRENT/backend"
export FRONTEND_FOLDER="$DIR_CURRENT/frontend"
export APP_FOLDER="$DIR_CURRENT/app"
export JAVA_FOLDER="$DIR_CURRENT/java"
export MAVEN_FOLDER="$DIR_CURRENT/maven"
export JAVA_URL="https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz"
export JAVA_FILE="openjdk-11.0.2_linux-x64_bin.tar.gz"
export JAVA_SHA256_URL="https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz.sha256"
export JAVA_SHA256_FILE="openjdk-11.0.2_linux-x64_bin.tar.gz.sha256"
export JAVA_HOME="$JAVA_FOLDER/jdk-11.0.2"
export MAVEN_VERSION="3.9.1"
export MAVEN_HOME="$MAVEN_FOLDER/apache-maven-$MAVEN_VERSION"
export PATH="$JAVA_HOME/bin:$MAVEN_HOME/bin:/bin"
if [ ! -d "$DIR_DOWNLOAD" ]; then
  echo "create folder $DIR_DOWNLOAD"
  mkdir "$DIR_DOWNLOAD"
fi
#./java-install.sh
#./maven-install.sh
#./npm-install.sh
#./build-backend.sh
#./build-frontend.sh
mkdir "$APP_FOLDER/front-build"
mkdir "$APP_FOLDER/mysql/backup"
cp "$BACKEND_FOLDER/target/mz-0.0.1-SNAPSHOT-spring-boot.jar" "$APP_FOLDER/back-app/app.jar"
cp -r "$FRONTEND_FOLDER/dist/" "$APP_FOLDER/front-build"