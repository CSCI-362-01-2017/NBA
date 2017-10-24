#!/bin/bash
export CLASSPATH=/home/dave/testAutomation/project/classes.jar:$CLASSPATH

javac NumberUtilsDriver.java
java -cp .:$CLASSPATH NumberUtilsDriver

