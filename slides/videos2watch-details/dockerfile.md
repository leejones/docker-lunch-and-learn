## Dockerfile

```bash
FROM ruby:2.2.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /videos2watch
WORKDIR /videos2watch
ADD Gemfile /videos2watch/Gemfile
ADD Gemfile.lock /videos2watch/Gemfile.lock
RUN bundle install
ADD . /videos2watch
```
