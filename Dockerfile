FROM ruby:3.0-alpine

RUN echo 'gem: --no-document' >> /etc/gemrc

RUN apk add --no-cache \
  curl \
  git

RUN gem install dpl

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
