#!/bin/sh

# script to speed up deployment of the war file for development
# The defaults are for a Tomcat installation via Homebrew
# remove the war file, exploded application in Tomcat and any custom modules uploaded
rm -fr /usr/local/Cellar/tomcat7/7.0.64/libexec/webapps/openmrs
rm /usr/local/Cellar/tomcat7/7.0.64/libexec/webapps/openmrs.war
rm -fr /Users/ssmusoke/.OpenMRS/modules/*

# copy the generated war file to the application folder
cp target/openmrs.war /usr/local/Cellar/tomcat7/7.0.64/libexec/webapps