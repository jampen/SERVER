#!/bin/bash

IN_EULA_FILE_DIR=build-data/eula.txt
OUT_EULA_FILE_DIR=build/eula.txt

IN_BUILD_DIR=Paper/build/libs/
OUT_BUILD_DIR=build/

cp -r $IN_BUILD_DIR/* $OUT_BUILD_DIR
cp $IN_EULA_FILE_DIR $OUT_EULA_FILE_DIR

# Rename the JAR file to paper.jar
cd $OUT_BUILD_DIR
mv $(ls | grep paper-bundler*.jar) paper.jar
