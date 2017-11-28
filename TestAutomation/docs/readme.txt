How-To Documentation
  A.	Requirements: Linux OS (Ubuntu 16.04.3 LTS), Java 1.8, Git
  B.	Clone GitHub Repository:
    --> git clone https://github.com/CSCI-362-01-2017/NBA
  C.	Navigate to the TestAutomation folder
    --> cd TestAutomation
  D.	Execute scripts/runAllTests.sh to run the source framework and open the html file in the default browser.
    --> sh ./scripts/runAllTests.sh
  E.  Navigate to the scripts folder, then rename "NumberUtils.java" to "SourceNumberUtils.java"
  F.  Rename "FaultedNumberUtils.java" to "NumberUtils.java" this will make the ACTIVE class, the faulted class. 
  G.  Rerun the script.
    --> sh ./scripts/runAllTests.sh
