# NoopsHexbot

This is a gem wrapper for Github's Noops challenge Hexbot. Very simple to use. Full documentation for the Hexbot API can be found [here](https://noopschallenge.com/challenges/hexbot)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'noops_hexbot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noops_hexbot

## Examples

```ruby
# Require the gem
require 'noops_hexbot'
# Set up a client
client = NoopsHexbot::Client.new

#Call methods on the client, there are only 3 methods:
client.colour # Returns a single hexcode
client.colours(3) # Returns an array of hexcodes (Max 1000)
client.colours_with_seeds(10, ["FFFFFF", "000000"]) # Returns an array of hexcodes. Hexcodes should not have the #. Hexcodes will be a mix of a random combination of two of the seeds. Invalid hexcode will return an error.
# All of these methods can also be called by replacing the colour with color.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/raidzklart/noops_hexbot.
