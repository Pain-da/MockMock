FROM openjdk:8-jre
MAINTAINER Alen Bijelic <alen.bijelic@heig-vd.ch>

# Install netcat, so that we can demonstrate container-to-container communication
RUN apt-get update && \
  apt-get -y install netcat && \
  apt-get clean 
  
#
# When we build the image, we copy the executable jar in the image file system. 
#
COPY MockMock-1.4.0.one-jar.jar /opt/app/server.jar

#
# This is the command that is executed when the Docker container starts
#
ENTRYPOINT ["java","-jar"]
CMD ["/opt/app/server.jar", "-p", "2525", "-h", "8080"]