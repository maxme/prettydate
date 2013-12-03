#!/bin/sh

LOCAL_GH_PAGES=file:///Users/max/work/automattic/WordPress-Android-gh-pages/
VERSION=0.1

mvn deploy:deploy-file -Dfile=build/libs/EmailChecker-0.1.aar -Durl=$LOCAL_GH_PAGES -DgroupId=org.wordpress -DartifactId=emailchecker -Dversion=$VERSION
