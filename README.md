## Cluster Diagnostic Application
This is a simple web application for testing WAR deployment and its respective configuration.

### Configuration Verification
This application is designed to display the following information:
* System Properties
* Environment Passthrough


### Development

```shell
# Build a WAR Artifact
mvn package
# Run via Local Jetty http://localhost:8080
mvn jetty:run
```
