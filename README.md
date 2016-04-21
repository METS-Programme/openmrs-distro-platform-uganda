openmrs-distro-platform-uganda
==============================

Custom WAR file packaging the OpenMRS platform distribution for Uganda

##What additions
  * pom.xml contains all module dependencies required to run the Uganda distribution
  * modules folder contains any omod that cannot be pulled from Nexus (some are that old), or custom builds with code not yet merged into the respective modules. Once changes are merged, then the module is deleted from that folder and pulled via the pom.xml file

##Building the project
 * Check out the project onto your machine if you haven't yet.
 * Build the distributable by running the command below: 
 
  ``` 
  mvn clean install
  ```

