FROM ubuntu:16.04

USER root

MAINTAINER Pom

RUN apt-get update && apt-get clean &&  apt-get install -y --no-install-recommends apt-utils

RUN apt-get install -y wget git unzip apt-transport-https ca-certificates curl ufw default-jre software-properties-common

#install jenkins 

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key |  apt-key add -

RUN echo deb https://pkg.jenkins.io/debian-stable binary/ |  tee /etc/apt/sources.list.d/jenkins.list

RUN apt-get update && apt-get -y install jenkins

#install java 8 

RUN add-apt-repository ppa:webupd8team/java

RUN apt update &&  apt install oracle-java8-installer

RUN apt-get install oracle-java8-set-default

ENV PATH="/usr/lib/jvm/java-8-oracle:${PATH}"

ENV PATH="/usr/lib/jvm/java-8-oracle/jre:${PATH}"

#reinstall jenkins 

RUN apt-get update && apt-get -y install jenkins

#install python

RUN apt-get install -y python-pip

RUN pip install --upgrade pip

#install robot frame work 

RUN pip install robotframework

RUN pip install robotframework-selenium2library

#install Google Chrome

RUN wget --no-check-certificate -qO - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

RUN echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list

RUN apt-get -y update && apt-get -y install google-chrome-stable

#install ChromeDriver

RUN wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip

RUN unzip chromedriver_linux64.zip

RUN cp chromedriver /usr/local/bin/chromedriver && chown root:root /usr/local/bin/chromedriverchromedriver && chmod +x /usr/local/bin/chromedriverchromedriver 

#install GeckoDriver

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-linux64.tar.gz

RUN tar -xvzf geckodriver*

RUN cp geckodriver /usr/local/bin/geckodriver && chown root:root /usr/local/bin/geckodriver && chmod +x /usr/local/bin/geckodriver 

#start jenkins 

RUN systemctl start jenkins && systemctl status jenkins && ufw allow 8081 && ufw status && ufw allow OpenSSH && ufw enable

WORKDIR /home

