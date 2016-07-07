#!/bin/sh

# build a new package to deploy
mvn clean install

# check if the CATALINA_HOME variable has been set as this is the location to which the war file is to be deployed
# a default value is used in case the installation cannot be found
${CATALINA_HOME:=/usr/local/Cellar/tomcat7/7.0.70/libexec}

# script to speed up deployment of the war file for development
# The defaults are for a Tomcat installation via Homebrew
# remove the war file, exploded application in Tomcat and any custom modules uploaded
rm -fr $CATALINA_HOME/webapps/openmrs
rm $CATALINA_HOME/webapps/openmrs.war
rm -fr $HOME/.OpenMRS/modules/*

# copy the generated war file to the application folder
cp target/openmrs.war $CATALINA_HOME/webapps