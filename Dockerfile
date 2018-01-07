FROM ruby:2.4.2
ARG RAILS_ENV
MAINTAINER Mohsen Alizadeh "mohsen@alizadeh.us"

RUN curl --silent --location https://deb.nodesource.com/setup_6.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y apt-utils curl build-essential libpq-dev nodejs yarn
RUN mkdir -p /usr/local/yarn
