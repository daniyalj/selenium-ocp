FROM registry.access.redhat.com/openshift3/jenkins-slave-maven-rhel7:v3.7

USER root

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# RUN yum -y update
RUN yum -y install google-chrome-stable_current_x86_64.rpm
RUN ls /usr/local/

RUN pwd

RUN ls
