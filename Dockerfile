FROM ruby:2.3.3

RUN apt-get update -qq
RUN apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

# Setup working directory
RUN mkdir /myapp
WORKDIR /myapp

# Add gemfile
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

# Install gemfile
RUN bundle install
ADD . /myapp
