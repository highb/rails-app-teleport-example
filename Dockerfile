FROM ruby:2.7.2

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
RUN npm install --global yarn
RUN bundle exec rails webpacker:compile

EXPOSE 3000
CMD ["/usr/local/bin/bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
