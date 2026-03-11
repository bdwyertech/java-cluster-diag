## Cluster Diagnostic Application
This is a simple web application for testing WAR deployment and its respective configuration.

### Configuration Verification
This application is designed to display the following information:
* System Properties
* Environment Passthrough

### NOTE
Java 8 public updates from Oracle ended in 2022. Java 17 is a LTS baseline — required by Spring Boot 3, Jakarta EE 10, WildFly 27+, etc. Amazon Corretto 17 is supported through at least October 2029.  Java 21 is the newest LTS and gaining traction for virtual threads.

For this app, 17 is the right target since WildFly 39 requires it. If you want to move to 21 later, just update the base Docker images and change <release>21</release> in the pom.

### Development

```shell
# Build a WAR Artifact
mvn package
# Run via Local Jetty http://localhost:8080
mvn jetty:run
```
