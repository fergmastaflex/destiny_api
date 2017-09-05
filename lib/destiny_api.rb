require "destiny_api/version"
require "destiny_api/client"
require "destiny_api/configuration"

module DestinyApi 
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= DestinyApi::Configuration.new
  end

  def self.reset
    @configuration = DestinyApi::Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
