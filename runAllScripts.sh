#!/bin/bash

#This is NBA testing automation frameworks
#Team Members: Andrew Miller, Brian Steele, Noah Griffin 
USERNAME=xor
export CLASSPATH=/home/$USERNAME/TestAutomation/project/classes.jar:$CLASSPATH
TESTREPORT="/home/$USERNAME/TestAutomation/reports/site-index.html"

#Here we compile the Driver
javac NumberUtilsDriver.java
#Here we made a base java command to run our driver just to make life simpler in our loop
JAVABASECOMMAND="java -cp .:$CLASSPATH NumberUtilsDriver"

#Start the html creation
echo "<!DOCTYPE html>" > $TESTREPORT
echo "<p>" >> $TESTREPORT
echo " <b>TEAM NBA testing Framework</b><br />" >> $TESTREPORT
#Here we grab the input from testCase files
for file in /home/$USERNAME/TestAutomation/testCases/testCase*.txt
do
  TESTCASENUMBER=$(echo $file | tr -dc '0-9')
  
  TESTINPUTGRABBER='sed '\''5q;d'\'' $file'
  INPUT="$(eval $TESTINPUTGRABBER)"
  #Just testing the input by printing it.. this is debug code
  #echo $INPUT
  EXPECTEDRESULTGRABBER='sed '\''6q;d'\'' $file'
  EXPECTEDRESULT="$(eval $EXPECTEDRESULTGRABBER)"
  #Just testing the input by printing it.. this is debug code
  #echo $EXPECTEDRESULT
  OUTPUT="$(eval $JAVABASECOMMAND $INPUT)"

  #Testing for any differences between the oracle (Line 6 testCase) and Output of our java command
  if [ "$EXPECTEDRESULT" = "$OUTPUT" ]
  then
    TESTRESULT="<font color="green">Test Case Passed</font>"
  else
    TESTRESULT="<font color="red">Test Case Failed</font>"
  fi



  #Finally outputting results as an HTML Report
  echo "<br />" >> $TESTREPORT
  echo "Running test case #$TESTCASENUMBER...<br />" >> $TESTREPORT
  echo "Testing with input: $INPUT<br />" >> $TESTREPORT
  echo "Expected Result: $EXPECTEDRESULT<br />" >> $TESTREPORT
  echo "Test Result: $OUTPUT<br />" >> $TESTREPORT
  echo "$TESTRESULT<br />" >> $TESTREPORT
  echo "<br />" >> $TESTREPORT


  #Here is our debug terminal output
  #echo "Testing with input: $INPUT"
  #echo "Expected Result: $EXPECTEDRESULT"
  #echo "Test Result: $OUTPUT"
  #echo $TESTRESULT
  
done
#Finish html creation
echo "</p>" >> $TESTREPORT
#Running xdg-open as normal user again
su $USERNAME -c "xdg-open $TESTREPORT"

	

