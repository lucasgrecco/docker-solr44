FROM ubuntu:18.04
MAINTAINER Lucas Grecco
MAINTAINER Lucas Grecco
WORKDIR /root
RUN apt-get update
RUN apt-get install zip -y
RUN apt-get install wget -y
RUN apt-get install openjdk-8-jre -y
RUN wget http://archive.apache.org/dist/lucene/solr/4.4.0/solr-4.4.0.zip
RUN unzip solr-4.4.0.zip
RUN rm solr-4.4.0.zip
RUN pwd
RUN chmod -Rf 777 /root/solr-4.4.0
ENTRYPOINT cd /root/solr-4.4.0/example && java -jar start.jar
EXPOSE 8983