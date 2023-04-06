#!/bin/bash
echo "-====================-"
echo "Script frontend - start"
echo "Create folder for backend"
if [ -d "$FRONTEND_FOLDER" ]; then
  rm -rf "$FRONTEND_FOLDER"
  mkdir "$FRONTEND_FOLDER"
else
  mkdir "$FRONTEND_FOLDER"
fi
echo "clone git repo"
git clone https://github.com/AlexandrZaruchevsky/front-mz $FRONTEND_FOLDER
cd $FRONTEND_FOLDER
npm i
npm run build
echo "Script frontend - end"