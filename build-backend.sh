#!/bin/bash
echo "-====================-"
echo "Script backend - start"
echo "Create folder for backend"
if [ -d "$BACKEND_FOLDER" ]; then
  rm -rf "$BACKEND_FOLDER"
  mkdir "$BACKEND_FOLDER"
else
  mkdir "$BACKEND_FOLDER"
fi
echo "clone git repo"
git clone https://github.com/AlexandrZaruchevsky/back-mz $BACKEND_FOLDER
echo "Script - end"
cd $BACKEND_FOLDER
mvn clean compile install spring-boot:repackage
echo "Script backend - end"
echo "-====================-"
