require "httpclient"
require "uri"

module DestinyApi
  class Client
    BASE_URL = "https://www.bungie.net/Platform/".freeze

    def initialize
      @client = HTTPClient.new
    end

    def get(endpoint)
      raise 'Missing API Key. Please be sure to set this using the gems configuration.' if DestinyApi.configuration.api_key.nil?
      @client.get(BASE_URL + endpoint, nil, "X-API-KEY" => DestinyApi.configuration.api_key )
    end
  end
end
