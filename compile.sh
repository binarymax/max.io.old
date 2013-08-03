#!/bin/bash
find . -name \*~ | xargs rm -rf
rm -rf compiled
ruhoh compile
suffix=$(date +%s)
filename=blog$suffix.tar.gz
tar -zcf ./.releases/$filename compiled
scp ./.releases/$filename ubuntu@max.io:/home/ubuntu/
ssh ubuntu@max.io "./blog.sh '$filename'"
