FROM rails

RUN mkdir -p /app

ADD Gemfile /app/
ADD Gemfile.lock /app/

RUN cd /app && bundle install --deployment --path /var/bundle --without development test

ADD . /app

CMD bundle exec rails s Puma
