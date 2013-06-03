# ChefTest

Provides easy access to several testing tools for Chef cookbooks and related code.

## Installation

Add this line to your application's Gemfile:

    gem 'cheftest'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cheftest

## Usage

    cheftest$ rake -T 'ct'
    rake ct             # Run all tests
    rake ct:foodcritic  # Run foodcritic
    rake ct:knife       # Run knife test
    rake ct:spec        # Run specs

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
