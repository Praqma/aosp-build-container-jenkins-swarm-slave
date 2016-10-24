#!/usr/bin/env bash

JAR=`ls -1 swarm-client-*.jar | tail -n 1`
CMD="java ${JAVA_OPTS} -jar ${JAR} $@"
echo "Run: ${CMD}"
exec ${CMD}
