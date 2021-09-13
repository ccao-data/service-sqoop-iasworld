#!/bin/bash
: ${HADOOP_HOME:=/usr/local/hadoop}
$HADOOP_HOME/etc/hadoop/hadoop-env.sh

# Clear HDFS datanode storage location
rm -rf /tmp/hadoop/dataNode/*

# Remove ssh keys from data nodes and wait for namenode to activate
if [[ $HOSTNAME != $MASTER_HOSTNAME ]]; then
    rm /root/.ssh/id_ed25519
fi

# Remove annoying warnings about dependencies
export ACCUMULO_HOME=/tmp
export HCAT_HOME=/tmp
export ZOOKEEPER_HOME=/tmp
export HBASE_HOME=/tmp

# Replace namenode hostname with docker-compose hostname
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/core-site.xml.template > /usr/local/hadoop/etc/hadoop/core-site.xml
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/yarn-site.xml.template > /usr/local/hadoop/etc/hadoop/yarn-site.xml
sed s/HOSTNAME/$MASTER_HOSTNAME/ $HADOOP_HOME/etc/hadoop/mapred-site.xml.template > /usr/local/hadoop/etc/hadoop/mapred-site.xml

# Add node hostnames to workers file
echo $MASTER_HOSTNAME > $HADOOP_HOME/etc/hadoop/workers
echo $NODE_HOSTNAMES | tr -s ' ' '\n' >> $HADOOP_HOME/etc/hadoop/workers

# Start hadoop
/usr/sbin/sshd
$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$HADOOP_HOME/bin/mapred --daemon start historyserver

# Grab JDBC drivers from mounted volume
cp /jdbc/* $SQOOP_HOME/lib
