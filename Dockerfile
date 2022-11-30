FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /try_rails
COPY Gemfile Gemfile.lock /try_rails/
RUN bundle install
