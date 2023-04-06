#!/usr/bin/env bash
echo "Java install - start"

#Download file checksum
if [ -f "$DIR_DOWNLOAD/$JAVA_SHA256_FILE" ]; then
  rm -rf "$DIR_DOWNLOAD/$JAVA_SHA256_FILE"
fi
wget "$JAVA_SHA256_URL" -P $DIR_DOWNLOAD

#Read checksum from file
CHECKSUM_JAVA_ARCHIVE_REMOTE=$(cat "$DIR_DOWNLOAD/$JAVA_SHA256_FILE")

#download file
if [ ! -f "$DIR_DOWNLOAD/$JAVA_FILE" ]; then
  wget "$JAVA_URL" -P $DIR_DOWNLOAD
else
  TMP=$(sha256sum "$DIR_DOWNLOAD/$JAVA_FILE")
  CHECKSUM_JAVA_ARCHIVE_LOCAL=($TMP)
  if [ ! "$CHECKSUM_JAVA_ARCHIVE_REMOTE" = "${CHECKSUM_JAVA_ARCHIVE_LOCAL[0]}" ]; then
    rm -rf "$DIR_DOWNLOAD/$JAVA_FILE"
    wget "$JAVA_URL" -P $DIR_DOWNLOAD
  fi
fi

#create java folder
if [ -d "$JAVA_FOLDER" ]; then
  rm -rf "$JAVA_FOLDER"
  mkdir "$JAVA_FOLDER"
else
  mkdir "$JAVA_FOLDER"
fi

#extract java from archive
tar xzvpf "$DIR_DOWNLOAD/$JAVA_FILE" -C "$JAVA_FOLDER"

echo "Java install - end"