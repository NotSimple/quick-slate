FROM ruby:2.6.5

RUN apt-get update && apt-get install -y nodejs && \
 apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/slatedocs/slate /slate_source_orig

RUN cd /slate_source_orig && gem install bundler --version '2.0.2' && \
 bundle install

VOLUME /slate/source
VOLUME /slate/build

EXPOSE 4567

CMD cp -nr slate_source_orig/* /slate && \
 cd slate && \
 exec bundle exec middleman server --watcher-force-polling