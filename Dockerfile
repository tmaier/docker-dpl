FROM ruby:2.3-alpine

RUN "echo 'gem: --no-document' >> /etc/gemrc"

RUN apk add --no-cache curl git

RUN gem install dpl

ENTRYPOINT ["dpl"]
CMD ["--help"]
