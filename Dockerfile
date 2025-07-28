# Dockerfile (arm64 호환)
FROM arm64v8/ruby:3.3

RUN apt-get update -qq && apt-get install -y build-essential

RUN gem install bundler jekyll rexml

WORKDIR /srv/jekyll

COPY . /srv/jekyll

RUN bundle install

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]

