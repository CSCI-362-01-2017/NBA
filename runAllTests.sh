#!/bin/bash
export CLASSPATH=../project/classes.jar:$CLASSPATH

javac NumberUtilsDriver.java
java -cp .:$CLASSPATH NumberUtilsDriver

