#!/usr/bin/env bash

$KAFKA_HOME/bin/zookeeper-server-start.sh -daemon $KAFKA_HOME/config/zookeeper.properties
$KAFKA_HOME/bin/kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties

# run the original start script of parent fabric8/jenkins-jnlp-client image
/usr/local/bin/start.sh
