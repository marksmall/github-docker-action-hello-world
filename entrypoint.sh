#!/bin/sh -l

git clone --branch 1.35.0 https://github.com/mapbox/tippecanoe.git
cd tippecanoe
make -j
make install
tippecanoe --version

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT
