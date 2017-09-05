# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'destiny_api/version'

Gem::Specification.new do |spec|
  spec.name          = "destiny_api"
  spec.version       = DestinyApi::VERSION
  spec.authors       = ["fergmastaflex"]
  spec.email         = ["joey@fergmedia.com"]
  spec.summary       = %q{A simple web client used to interface with Destiny's API}
  spec.description   = %q{This will provide a easy-to-use client for Bungie's API, specifically for Destiny}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httpclient"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
