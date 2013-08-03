#!/bin/bash
find . -name \*~ | xargs rm -rf
rm -rf compiled
ruhoh compile
rackup -p9292
