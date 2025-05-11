FROM ruby:3.4-alpine

WORKDIR /app

COPY . .

# Install build dependencies for native extensions if needed
RUN apk add --no-cache build-base

# Build and install the gem
RUN gem build dance.gemspec && \
    gem install dance-*.gem && \
    rm dance-*.gem

# Set the entrypoint to the dance command
ENTRYPOINT ["dance"]
CMD ["nice"]