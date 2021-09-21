FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y --no-install-recommends default-mysql-client && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN mkdir /okonomiyakiApp
WORKDIR /okonomiyakiApp
COPY Gemfile /okonomiyakiApp/Gemfile
COPY Gemfile.lock /okonomiyakiApp/Gemfile.lock
RUN bundle install
COPY . /okonomikakiApp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]