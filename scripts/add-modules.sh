#!bin/bash

zip -9u ${warFilename}.war ${modulesFolder}/*.omod
zip -9ru ${warFilename}.war ${scriptsFolder}/*
zip -9ru ${warFilename}.war ${templatesFolder}/*