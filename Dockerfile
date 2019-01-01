FROM jenkins/jenkins
MAINTAINER Serdar Sarioglu, Serdar.Sarioglu@mysystem.org

# Install Basic Tools We will use on Jenkins nodes :)
USER root
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl7 dnsutils python-pip python-dev build-essential curl wget \
      && pip install --upgrade awscli python-magic azure-cli
