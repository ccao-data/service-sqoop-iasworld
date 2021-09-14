##### BUILD HADOOP NATIVELIBS #####
FROM centos:7 AS build-native-hadoop

# Development tools
RUN yum install -y curl which tar bunzip2 openssl-devel gcc gcc-c++ autoconf automake libtool zlib-devel && \
    yum groupinstall "Development Tools" -y && \
    yum clean all

# Cmake3 from EPEL
# Disabled pulling from fedora as it 403s often
# RUN curl https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm > /tmp/epel.rpm
COPY docker-config/epel.rpm /tmp
RUN rpm -i /tmp/epel.rpm && \
    rm /tmp/epel.rpm && \
    yum install -y --enablerepo=epel cmake3 && \
    ln -s /usr/bin/cmake3 /usr/bin/cmake

# Maven
ARG MAVEN_VER=3.5.3
RUN curl https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/${MAVEN_VER}/apache-maven-${MAVEN_VER}-bin.tar.gz | tar xz -C /usr/share
ENV MAVEN_HOME /usr/share/apache-maven-${MAVEN_VER}
ENV PATH $PATH:$MAVEN_HOME/bin

# Protobuf
ARG PROTOBUF_VER=2.5.0
RUN curl -L -k1 https://github.com/google/protobuf/releases/download/v${PROTOBUF_VER}/protobuf-${PROTOBUF_VER}.tar.bz2 | bunzip2 | tar -x -C /tmp && \
    cd /tmp/protobuf-${PROTOBUF_VER} && \
    ./configure && make && make install
ENV LD_LIBRARY_PATH /usr/local/lib
ENV LD_RUN_PATH /usr/local/lib

# JDK
RUN yum install -y java-1.8.0-openjdk-devel
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Download Hadoop
ARG HADOOP_VER=3.1.0
RUN curl -sk https://archive.apache.org/dist/hadoop/core/hadoop-${HADOOP_VER}/hadoop-${HADOOP_VER}-src.tar.gz | tar -xz -C /tmp/

# Build Hadoop nativelibs
RUN cd /tmp/hadoop-${HADOOP_VER}-src && \
    mvn package -Pdist,native -DskipTests -Dtar

# Tarball nativelibs folder
RUN cd /tmp/hadoop-${HADOOP_VER}-src/hadoop-dist/target/hadoop-${HADOOP_VER}/lib/ && \
    rm -r ./native/examples && \
    tar cvzf /tmp/native.tar.gz ./native/

