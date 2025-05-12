# Dance

A fun Ruby gem that brings dancing emojis and bears to your terminal.

## Installation

Install the gem:

```bash
gem install dance
```

Or add to your Gemfile:

```ruby
gem 'dance'
```

## Usage

The gem provides two commands:

### Dance Nice

Shows a line of dancing emoji figures with animation:

```bash
dance nice
```

Press Ctrl+C to stop the dancing.

### Dance Bear

Shows bears (which are notoriously bad dancers):

```bash
dance bear
```

This command will issue a warning about the bear's dancing abilities by default. If you believe bears can dance, set the environment variable:

```bash
A_WONDER_THE_BEAR_DANCES_AT_ALL=true dance bear
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Docker

You can also run this gem using Docker:

```bash
docker build -t dance .
docker run dance nice
docker run -e A_WONDER_THE_BEAR_DANCES_AT_ALL=true dance bear
```

## License

Proprietary.beep
.beep
.beep
.beep
.beep
.beep
