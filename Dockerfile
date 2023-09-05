ARG RUBY_VERSION=3.2.0
FROM ruby:$RUBY_VERSION

# Dependencies
RUN apt-get update -qq && apt-get install -y \
    apt-utils \
    build-essential \
    default-libmysqlclient-dev

RUN git config --global init.defaultBranch main

# Update Ruby dependency manager
RUN gem update --system
RUN gem install bundler

# Setting up rails
ARG RAILS_VERSION=7.0.7.2
RUN gem install rails -v=$RAILS_VERSION

WORKDIR /usr/src/peeper
