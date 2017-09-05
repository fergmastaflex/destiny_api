# DestinyApi

This a ruby client for the Destiny 2 API.

## Installation

**THIS ISN'T QUITE ON RUBY GEMS YET**

Add this line to your application's Gemfile:

```ruby
gem 'destiny_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install destiny_api

## Configuration

Somewhere in your app, you'll need to configure this gem with the API key bungie provided to you.

**If you do not have an API key, you can get one at Bungie's application page** https://www.bungie.net/en/Application

```
  DestinyApi.configure do |config|
    config.api_key = 'your_api_key'
  end
```

**Alternatively**, you can also set an environment variable.

```
  DESTINY_API_KEY = 'your_api_key'
``

## Contributing

1. Fork it ( https://github.com/[my-github-username]/destiny_api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
