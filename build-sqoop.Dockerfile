# Multi-stage Dockerfile to build the dependencies required for Apache Sqoop
# version 1.4.7. Original Dockerfiles grabbed from:
# https://github.com/dvoros/docker-hadoop-build
# https://github.com/dvoros/hadoop-docker
# https://github.com/dvoros/docker-sqoop

##### CREATE MAIN HADOOP IMAGE #####

# Fresh base image 
FROM centos:7 AS hadoop

# Development tools
RUN yum install -y curl which tar bunzip2 openssh-server openssh-clients rsync && \
    yum clean all && \
    yum update -y libselinux

# JDK8
RUN yum install -y java-1.8.0-openjdk-devel
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Grab built nativelibs from prior stage
COPY --from=registry.gitlab.com/ccao-data-science---modeling/services/service_sqoop_iasworld:build-native-hadoop-cache /tmp/native.tar.gz /tmp/native.tar.gz
RUN mkdir -p /tmp/native && \
    cd /tmp/ && \
    tar xvzf /tmp/native.tar.gz

# Get Hadoop and replace libhadoop.so
ARG HADOOP_VER=3.1.0
RUN curl -sk https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VER}/hadoop-${HADOOP_VER}.tar.gz | tar -xz -C /usr/local/ && \
    cd /usr/local && ln -s ./hadoop-${HADOOP_VER} hadoop && \
    rm -rf /usr/local/hadoop/lib/native && \
    mv /tmp/native /usr/local/hadoop/lib

# ssh setup for node comms
COPY docker-config/ssh_config /root/.ssh/config
RUN chmod 600 /root/.ssh/config && \
    chown root:root /root/.ssh/config && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -q -N "" -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key && \
    ssh-keygen -q -N "" -t ed25519 -f /etc/ssh/ssh_host_ed25519_key && \
    ssh-keygen -q -N "" -t ed25519 -f /root/.ssh/id_ed25519 && \
    cp /root/.ssh/id_ed25519.pub /root/.ssh/authorized_keys

# Fix 254 error code
RUN sed -i "/^[^#]*UsePAM/ s/.*/#&/" /etc/ssh/sshd_config && \
    echo "UsePAM no" >> /etc/ssh/sshd_config && \
    echo "Port 2122" >> /etc/ssh/sshd_config

# Setup environment
ENV HADOOP_HOME /usr/local/hadoop
ENV HDFS_NAMENODE_USER root
ENV HDFS_DATANODE_USER root
ENV HDFS_SECONDARYNAMENODE_USER root
ENV YARN_RESOURCEMANAGER_USER root
ENV YARN_NODEMANAGER_USER root
ENV HADOOP_COMMON_HOME $HADOOP_HOME
ENV HADOOP_HDFS_HOME $HADOOP_HOME
ENV HADOOP_MAPRED_HOME $HADOOP_HOME
ENV HADOOP_YARN_HOME $HADOOP_HOME
ENV HADOOP_CONF_DIR /usr/local/hadoop/etc/hadoop
ENV PATH $PATH:$HADOOP_HOME/bin
RUN echo "JAVA_HOME=${JAVA_HOME}" >> ${HADOOP_HOME}/etc/hadoop/hadoop-env.sh && \
    echo "HADOOP_HOME=${HADOOP_HOME}" >> ${HADOOP_HOME}/etc/hadoop/hadoop-env.sh

# Make distributed via Docker
RUN mkdir ${HADOOP_HOME}/input && \
    cp ${HADOOP_HOME}/etc/hadoop/*.xml ${HADOOP_HOME}/input
COPY docker-config/site/ ${HADOOP_HOME}/etc/hadoop/
RUN sed s/HOSTNAME/localhost/ \
    ${HADOOP_HOME}/etc/hadoop/core-site.xml.template \
    > ${HADOOP_HOME}/etc/hadoop/core-site.xml && \
    sed s/HOSTNAME/localhost/ \
    $HADOOP_HOME/etc/hadoop/yarn-site.xml.template \
    > /usr/local/hadoop/etc/hadoop/yarn-site.xml && \
    sed s/HOSTNAME/localhost/ \
    $HADOOP_HOME/etc/hadoop/mapred-site.xml.template \
    > /usr/local/hadoop/etc/hadoop/mapred-site.xml

# Add docker startup files and dirs
COPY docker-config/init.sh /etc/docker-config/init.sh
RUN chown -R root:root /etc/docker-config/ && \
    chmod -R 700 /etc/docker-config/ && \
    /etc/docker-config/init.sh


##### CREATE MAIN SQOOP IMAGE #####

# Use hadoop image as base 
FROM hadoop AS sqoop

# Setup environment
ARG SQOOP_VER=1.4.7
ARG HADOOP_VER=2.6.0
ENV SQOOP_HOME /usr/local/sqoop
ENV PATH $PATH:$HADOOP_HOME/bin:$SQOOP_HOME/bin

# Download sqoop
RUN curl -s http://archive.apache.org/dist/sqoop/${SQOOP_VER}/sqoop-${SQOOP_VER}.bin__hadoop-${HADOOP_VER}.tar.gz | tar -xz -C /usr/local && \
    ln -s /usr/local/sqoop-${SQOOP_VER}.bin__hadoop-${HADOOP_VER} ${SQOOP_HOME}

# Make dirs for class files and jars
RUN mkdir -p /tmp/bindir /tmp/target && \
    chmod +x ${HADOOP_HOME}/etc/hadoop/hadoop-env.sh && \
    chown root:root ${HADOOP_HOME}/etc/hadoop/hadoop-env.sh

# Replace random generator in java to fix bug:
# https://stackoverflow.com/questions/2327220/oracle-jdbc-intermittent-connection-issue
RUN sed 's/securerandom.source=file\:\/dev\/random/securerandom.source=file\:\/dev\/..\/dev\/urandom/' ${JAVA_HOME}/jre/lib/security/java.security

# Entrypoint/startup for sqoop
COPY docker-config/java-json.jar ${SQOOP_HOME}/lib 
COPY docker-config/bootstrap.sh docker-config/entrypoint.sh /etc/docker-config/
RUN chown -R root:root /etc/docker-config/ && \
    chmod -R 755 /etc/docker-config/ && \
    chmod +x /etc/docker-config/entrypoint.sh

# Define script to run at startup
ENTRYPOINT ["/etc/docker-config/entrypoint.sh"]
