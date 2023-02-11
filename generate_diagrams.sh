#!/usr/bin/env bash

export PLANT_UML='addons/plantuml-1.2023.1.jar'
export FILES=$(find . -path ./addons -prune -o -name "*.puml" -print)

for f in $FILES
do
  java -jar $PLANT_UML $f -tpng
done