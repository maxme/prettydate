#!/bin/sh

gradle build

# Push to the local maven repo
mvn install:install-file -Dfile=build/libs/android-0.1-debug.aar -DgroupId=org.wordpress -DartifactId=prettydate -Dpackaging=aar -Dversion=0.1
