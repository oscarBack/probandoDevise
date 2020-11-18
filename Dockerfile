FROM timbru31/ruby-node:2.7 
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && apt install yarn -y && apt-get install -y libpq-dev gcc g++ make nodejs yarn --no-install-recommends

RUN mkdir /devisedos
WORKDIR /devisedos
COPY Gemfile /devisedos/Gemfile
COPY Gemfile.lock /devisedos/Gemfile.lock
RUN yarn
RUN bundle install
COPY . /devisedos

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]