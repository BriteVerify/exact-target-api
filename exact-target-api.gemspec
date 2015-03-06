# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exact-target-api/version'

Gem::Specification.new do |gem|
  gem.name          = "exact-target-api"
  gem.version       = ET::VERSION
  gem.authors       = ["Alexander Shapiotko","BriteVerify"]
  gem.email         = ["support@briteverify.com"]
  gem.description   = "ExactTarget API wrapper"
  gem.summary       = "ExactTarget API wrapper"
  gem.homepage      = "https://github.com/BriteVerify/exact-target-api"
  gem.license       = "MIT"

  gem.add_dependency "nokogiri", "~> 1.5"
  gem.add_dependency "savon", "~> 2.2.0"
  gem.add_dependency "jwt", "~> 1.3"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
