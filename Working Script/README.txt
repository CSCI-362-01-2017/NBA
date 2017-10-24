This folder includes all the requirements to run NumberUtilsDriver.java via script, with the result of NumberUtils.truncate() being returned to the terminal. 

HOW TO USE: Place runAllTests.sh, NumberUtilsDriver.java and NumberUtilsDriver.class in the same directory (default should be scripts). Then place classes.jar in a different directory (default should be project). If you use the default options, the script will run after you replace /dave/ in the path names with your username. If you change classes.jar to a different directory, then update the classpath declaration at the top of runAllTests.sh. No matter where you move anything, as long as you write the classpath correctly, the classes will be able to communicate with each other. 


