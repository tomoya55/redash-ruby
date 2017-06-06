# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "redash/version"

Gem::Specification.new do |spec|
  spec.name          = "redash-ruby"
  spec.version       = Redash::VERSION
  spec.authors       = ["Tomoya Hirano"]
  spec.email         = ""
  spec.homepage      = "https://github.com/tomoya55/redash-ruby"
  spec.summary       = %q{A Ruby client for Redash APIs.}
  spec.description   = %q{A Ruby client for Redash APIs.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.12.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "minitest-power_assert", "~> 0.2.0"
end
