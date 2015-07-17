FROM ubuntu:12.04

MAINTAINER Markos Calderon <markos@criptext.com>

RUN apt-get update

RUN apt-get install --no-install-recommends -y wget nano curl

# Install libreoffice

RUN apt-get install --no-install-recommends -y python-software-properties

RUN add-apt-repository ppa:libreoffice/libreoffice-4-2 

RUN apt-get update

RUN apt-get install --no-install-recommends -y libreoffice

# Install imagemagick

RUN apt-get install --no-install-recommends -y imagemagick

# Install Node

RUN curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -
RUN apt-get install --no-install-recommends -y nodejs

RUN apt-get clean && rm -rf /var/lib/apt/lists/*