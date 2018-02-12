# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'only_google_apis/version'

Gem::Specification.new do |spec|
  spec.name          = "only_google_apis"
  spec.version       = OnlyGoogleApis::VERSION
  spec.authors       = ["Benoit Tigeot"]
  spec.email         = ["btigeot@octo.com"]

  spec.summary       = 'Accept requests only from Google APIs'
  spec.description   = 'Accept requests only from Google APIs'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.required_ruby_version = '>= 2.2.0'
end
