FROM jenkins/jenkins

USER root
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get install -y sudo libltdl7 dnsutils 
