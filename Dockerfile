FROM ruby:3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# RUN mkdir /noteapp
WORKDIR /Rails-Docker

ADD Gemfile /Rails-Docker/Gemfile
ADD Gemfile.lock /Rails-Docker/Gemfile.lock
# RUN bundle clean --force
# RUN gem install bundler:2.4.18

RUN bundle install
RUN bundle exec rails webpacker:install

# Install a specific version of Node.js (e.g., version 14.x)
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Print Node.js version
RUN node -v

# Install Yarn (if needed)
RUN npm install -g yarn
RUN npm install

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]

ADD . /Rails-Docker
