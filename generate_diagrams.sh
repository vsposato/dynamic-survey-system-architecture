#!/usr/bin/env bash

export PLANT_UML='addons/plantuml-1.2023.1.jar'
export PLANT_UML_FILES=$(find . -path ./addons -prune -o -name "*.puml" -print)
export PLANT_UML_PNG_FILES=$(find . -path ./addons -prune -o -name "*.png" -print)


for f in $PLANT_UML_PNG_FILES
do
  rm $f
done

for f in $PLANT_UML_FILES
do
  java -jar $PLANT_UML $f -tpng
done

export ASCII_DOC_SHELL='addons/asciidoctorj-2.5.4/bin/asciidoctorj'
export ASCII_DOC_FILES=$(find . -path ./addons -prune -o -name "*.adoc" -print)
export ASCII_DOC_HTML_FILES=$(find . -path ./addons -prune -o -name "*.html" -print)

for f in $ASCII_DOC_HTML_FILES
do
  rm $f
done

for f in $ASCII_DOC_FILES
do
  $ASCII_DOC_SHELL $f
done