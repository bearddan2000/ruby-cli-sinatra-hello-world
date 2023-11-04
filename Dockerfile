FROM ruby:latest

WORKDIR /workspace

# RUN gem install sinatra
# 
RUN gem install bundle

COPY bin/Gemfile .

RUN bundle install

WORKDIR /code

COPY bin .

# CMD ["ruby", "/code/main.rb", "Front.start"]

# CMD ["puma", "-C", "config.ru", "-b", "tcp//:0.0.0.0:4567"]

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]

# CMD ["bundle", "exec", "main", "s", "-b", "0.0.0.0", "-p", "4567"]

# CMD ["ruby", "/code/main.rb"]