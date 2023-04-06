#!/bin/bash
echo "-====================-"
echo "Script frontend - start"
echo "Create folder for backend"
if [ -d "$APP_FOLDER" ]; then
  rm -rf "$APP_FOLDER"
  mkdir "$APP_FOLDER"
else
  mkdir "$APP_FOLDER"
fi
echo "clone git repo"
git clone https://github.com/AlexandrZaruchevsky/docker-mz $APP_FOLDER
#cd $FRONTEND_FOLDER
#npm i
#npm run build
echo "Script frontend - end"