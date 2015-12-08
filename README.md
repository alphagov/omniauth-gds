# Omniauth::Gds

Omniauth strategy for GDS oauth2 provider

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-gds'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-gds

## Usage

To use with Devise, add the following to your Devise initializer (typically `devise.rb`):

```ruby
  config.omniauth :gds,
    ENV.fetch("APPLICATION_ID"), # Obtained when generating a new application
    ENV.fetch("APPLICATION_SECRET"),
    client_options: {
      site: ENV.fetch("SIGNIN_URL") # The location of your signonotron2 install
    }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
