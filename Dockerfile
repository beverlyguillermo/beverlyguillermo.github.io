from ruby:2.7-alpine as base

RUN apk update && apk add --no-cache build-base

WORKDIR /src

FROM base as build

COPY Gemfile Gemfile.lock /src
RUN bundle install
