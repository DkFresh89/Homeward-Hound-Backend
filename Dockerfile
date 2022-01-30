FROM ruby:3.0-alpine

RUN apk add --no-cache libxml2 libxslt && \
        apk add --no-cache --virtual .gem-installdeps build-base libxml2-dev libxslt-dev && \
        gem install nokogiri --platform=ruby -- --use-system-libraries && \
        rm -rf $GEM_HOME/cache && \
        apk del .gem-installdeps
