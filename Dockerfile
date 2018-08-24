FROM registry.access.redhat.com/openshift3/jenkins-slave-maven-rhel7:v3.7

USER root

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN yum -y install redhat-lsb libXScrnSaver
RUN yum -y localinstall google-chrome-stable_current_x86_64.rpm

RUN ls /usr/local/
RUN ls /usr/lib/
RUN pwd

RUN ls

USER 1001
