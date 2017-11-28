How-To Documentation
  A.	Requirements: Linux OS (Ubuntu 16.04.3 LTS), Java 1.8, Git
  B.	Clone GitHub Repository:
    --> git clone https://github.com/CSCI-362-01-2017/NBA
  C.	Navigate to the TestAutomation folder
    --> cd TestAutomation
  D.	Execute scripts/runAllTests.sh to run the source framework and open the html file in the default browser.
    --> ./runAllTests.sh
  E.  Change line 14 of runAllTests.sh to compile "FaultedNumberUtils.java" instead of "NumberUtils.java" This will compile
      our faults and the next time you run the script, it will show some tests failing.
    --> ./runAllTests.sh
