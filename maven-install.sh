#!/usr/bin/env bash
echo "MAVEN INSTALL - start"
MAVEN_FILE="apache-maven-$MAVEN_VERSION-bin.tar.gz"
MAVEN_HOME_FOLDER="apache-maven-$MAVEN_VERSION"
MAVEN_URL="https://downloads.apache.org/maven/maven-3/$MAVEN_VERSION/binaries/$MAVEN_FILE"
echo "download MAVEN from $MAVEN_URL to $DIR_DOWNLOAD"
if [ ! -f "$DIR_DOWNLOAD/$MAVEN_FILE" ]; then
  wget $MAVEN_URL -P $DIR_DOWNLOAD
fi
echo "extract maven"
if [ -d "$MAVEN_FOLDER" ]; then
  rm -rf "$MAVEN_FOLDER"
  mkdir "$MAVEN_FOLDER"
else
  mkdir "$MAVEN_FOLDER"
fi
tar xzvpf "$DIR_DOWNLOAD/$MAVEN_FILE" -C "$MAVEN_FOLDER"
mvn --version
echo "MAVEN INSTALL - end"