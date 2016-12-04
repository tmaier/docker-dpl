FROM ruby:2.3-alpine
MAINTAINER Tobias L. Maier <tobias.maier@baucloud.com>

RUN echo 'gem: --no-document' >> /etc/gemrc

RUN apk add --no-cache \
  curl \
  git

RUN gem install dpl

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
