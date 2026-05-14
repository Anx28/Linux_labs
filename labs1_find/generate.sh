#!/bin/bash

rm -rf workspace
mkdir -p workspace/{logs,tmp,docs,images,backup}

touch workspace/logs/app.log
touch workspace/logs/nginx.log
touch workspace/logs/error.log

touch workspace/tmp/cache.tmp
touch workspace/tmp/old.tmp

touch workspace/docs/readme.txt
touch workspace/docs/notes.txt

touch workspace/images/photo.jpg
touch workspace/images/logo.png

touch workspace/backup/archive.tar.gz

touch workspace/emptyfile

ln -s workspace/logs/app.log workspace/link_to_log

# делаем old.tmp старым
touch -d "10 days ago" workspace/tmp/old.tmp

echo "Lab generated in workspace/"
