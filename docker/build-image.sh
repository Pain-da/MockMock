#!/bin/bash

# Ask maven to build the executable jar file from the source files
mvn clean install --file ../pom.xml

# Copy the executable jar file in the current directory
cp ../target/MockMock-1.4.0.one-jar.jar .

# Build the Docker image locally
docker build --tag mockmocksmtpserver .
