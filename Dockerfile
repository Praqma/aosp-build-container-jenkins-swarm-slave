# Base image for building AOSP
FROM praqma/aosp-build-container:0.1.1

ENV JENKINS_SWARM_VERSION 2.2
ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk

# Get Jenkins swarm client
RUN curl --create-dirs -sSLo /var/build/swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$JENKINS_SWARM_VERSION/swarm-client-$JENKINS_SWARM_VERSION-jar-with-dependencies.jar

COPY start.sh /var/build/start.sh

ENTRYPOINT ["/usr/local/bin/dumb-init", "--", "/var/build/start.sh"]