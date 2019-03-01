FROM openjdk:8-slim

ENV SCALA_VERSION 2.11.12
ENV SBT_VERSION 0.13.16

RUN \
  apt-get update && \
  apt-get install -y libltdl7 && \
  apt-get install -y sudo && \
  apt-get install -y curl
  
# Install Scala
RUN \
  curl -fsL https://downloads.typesafe.com/scala/$SCALA_VERSION/scala-$SCALA_VERSION.tgz | tar xfz - -C /root/ && \
  echo >> /root/.bashrc && \
  echo "export PATH=~/scala-$SCALA_VERSION/bin:$PATH" >> /root/.bashrc
  
# Install sbt
RUN \
  curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get install sbt && \
  sbt sbtVersion