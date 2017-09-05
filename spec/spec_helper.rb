require 'bundler/setup'
Bundler.setup

require 'destiny_api' # and any other gems you need

RSpec.configure do |config|
  DestinyApi.configure { |config| config.api_key = "foo" }
end
