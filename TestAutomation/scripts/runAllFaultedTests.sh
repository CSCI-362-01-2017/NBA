#!/bin/bash

#This is NBA testing automation frameworks
#Team Members: Andrew Miller, Brian Steele, Noah Griffin

#Firstly we delete any previous test reports to avoid confusion although in theory they should overwrite
rm ./reports/*.html

#Here we set up the classpath and create an empty test report to append our data to 
export CLASSPATH=./
TESTREPORT="./reports/NBA-TestReport.html"

#Here we compile the source code and Drivers
javac ./project/src/FaultedNumberUtils.java
for file in ./testCasesExecutables/*.java
do
  javac $file
done

#Start the html creation
echo "<table style="width:100%">" > $TESTREPORT
echo " <b>TEAM NBA testing Framework</b><br />" >> $TESTREPORT
echo " <b>Team: Noah Griffin, Andrew Miller, Brian Steele</b><br />" >> $TESTREPORT
echo "<tr>" >> $TESTREPORT
echo "   <th>Test Case #</th>" >> $TESTREPORT
echo "   <th>Testing Method</th>" >> $TESTREPORT
echo "   <th>Input</th>" >> $TESTREPORT
echo "   <th>Expected Result:</th>" >> $TESTREPORT
echo "   <th>Output:</th>" >> $TESTREPORT
echo "   <th>Test Result:</th>" >> $TESTREPORT
echo "</tr>" >> $TESTREPORT



#Here we iterate over the testCase files and extract the necessary info from each
for file in ./testCases/testCase*.txt
do
  #Here we grab the number of the testCase and store it temporarily in a variable we can easily use
  TESTCASENUMBER=$(echo $file | tr -dc '0-9')
  
  #Grab the method name being called, useful for calling appropriate driver
  METHODGRABBER='sed '\''4q;d'\'' $file'
  METHODNAME="$(eval $METHODGRABBER  | cut -f1 -d'(')"
  #Grab input from current testCase file and store in a variable for later use
  TESTINPUTGRABBER='sed '\''5q;d'\'' $file'
  INPUT="$(eval $TESTINPUTGRABBER)"
  #Grab expected result from testCase file and store in a variable.
  EXPECTEDRESULTGRABBER='sed '\''6q;d'\'' $file'
  EXPECTEDRESULT="$(eval $EXPECTEDRESULTGRABBER)"
  
  #Here we made a base java command to run our driver just to make life simpler in our loop
  DRIVERNAME=$METHODNAME"_NumberUtilsDriver"
  JAVABASECOMMAND="java -cp .:$CLASSPATH/testCasesExecutables $DRIVERNAME"

  OUTPUT="$(eval $JAVABASECOMMAND $INPUT)"

  #Testing for any differences between the oracle (Line 6 testCase) and Output of our java command
  if [ "$EXPECTEDRESULT" = "$OUTPUT" ]
  then
    TESTRESULT="<font color="green">Test Case Passed</font>"
  else
    TESTRESULT="<font color="red">Test Case Failed</font>"
  fi



  #Finally appending results of the current TestCase file into our HTML Report 
  echo "<tr>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$TESTCASENUMBER</td>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$METHODNAME</td>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$INPUT</td>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$EXPECTEDRESULT</td>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$OUTPUT</td>" >> $TESTREPORT
  echo "<td align="center" valign="middle">$TESTRESULT</td>" >> $TESTREPORT
  echo "</tr>" >> $TESTREPORT


  #Here is our debug terminal output
  #echo "Testing with input: $INPUT"
  #echo "Expected Result: $EXPECTEDRESULT"
  #echo "Test Result: $OUTPUT"
  #echo $TESTRESULT
  
done

#Closing HTML Tag here, to finish HTML creation
echo "</p>" >> $TESTREPORT
#Running xdg-open as normal user
xdg-open $TESTREPORT

	

