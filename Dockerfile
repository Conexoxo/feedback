FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /feedback
WORKDIR /feedback
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH
COPY Gemfile /feedback/Gemfile
COPY Gemfile.lock /feedback/Gemfile.lock
RUN bundle install && bundle --version
COPY . /feedback

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
