FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.0.alpha1

RUN gem install dep --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dep"]
CMD ["--help"]
