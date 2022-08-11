FROM ruby:3.1.2
RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client

ADD . /fearless_test
WORKDIR /fearless_test

RUN bundle install

EXPOSE 3000

CMD ["bash"]