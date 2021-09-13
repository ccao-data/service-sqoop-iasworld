#!/bin/bash

: ${HADOOP_HOME:=/usr/local/hadoop}
$HADOOP_HOME/etc/hadoop/hadoop-env.sh
rm /tmp/*.pid

# Remove annoying warnings about dependencies
export ACCUMULO_HOME=/tmp
export HCAT_HOME=/tmp
export ZOOKEEPER_HOME=/tmp
export HBASE_HOME=/tmp

# Install libraries if any - (resource urls added comma separated to the ACP system variable)
cd $HADOOP_HOME/share/hadoop/common ; for cp in ${ACP//,/ }; do  echo == $cp; curl -LO $cp ; done; cd -

# Replace namenode hostname with docker-compose hostname
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/core-site.xml.template > /usr/local/hadoop/etc/hadoop/core-site.xml
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/yarn-site.xml.template > /usr/local/hadoop/etc/hadoop/yarn-site.xml
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/mapred-site.xml.template > /usr/local/hadoop/etc/hadoop/mapred-site.xml

# Remove ssh keys from data nodes
if [[ $HOSTNAME != $MASTER_HOSTNAME ]]; then
    rm /root/.ssh/id_ed25519
fi

# Start hadoop
/usr/sbin/sshd
$HADOOP_HOME/sbin/start-dfs.sh
sleep 5
$HADOOP_HOME/sbin/start-yarn.sh
sleep 5
$HADOOP_HOME/bin/mapred --daemon start historyserver
$HADOOP_HOME/bin/hdfs dfsadmin -safemode leave

# Grab JDBC drivers from mounted volume
cp /jdbc/* $SQOOP_HOME/lib
