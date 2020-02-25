FROM registry.access.redhat.com/ubi8/ubi
RUN yum -y install java-1.8.0-openjdk


RUN curl -o apache-tomcat-9.0.31.tar.gz http://us.mirrors.quenda.co/apache/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
RUN tar -xzf apache-tomcat-9.0.31.tar.gz && mv apache-tomcat-9.0.31 /opt/tomcat
RUN cd /opt/tomcat/webapps && curl -o sample.war https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/sample.war
ENV CATALINA_HOME=/opt/tomcat
ENV JAVA_HOME=/usr/lib/jvm/jre-1.8.0

EXPOSE 8080
CMD $CATALINA_HOME/bin/catalina.sh run