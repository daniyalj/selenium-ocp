FROM registry.access.redhat.com/openshift3/jenkins-slave-maven-rhel7:v3.7

USER root

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum -y install redhat-lsb libXScrnSaver unzip
RUN yum -y localinstall google-chrome-stable_current_x86_64.rpm


RUN ls /usr/local/
RUN ls /usr/lib/
RUN pwd

RUN ls

RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv -f chromedriver /usr/bin/chromedriver

ENV ChromeDriver=/usr/bin/chromedriver
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk
ENV M2_HOME=/opt/rh/rh-maven33/root/usr/share/maven
ENV M2=$M2_HOME/bin
ENV PATH=$JAVA_HOME:$GeckoDriver:$ChromeDriver:$M2:$PATH

USER 1001
