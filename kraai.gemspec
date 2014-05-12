# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kraai/version'

Gem::Specification.new do |spec|
  spec.name          = "kraai"
  spec.version       = Kraai::VERSION
  spec.authors       = ["Andre Mouton"]
  spec.email         = ["andre@amtek.co.za"]
  spec.summary       = %q{Api wrapper for stackoverflow.}
  spec.description   = %q{Api wrapper for stackoverflow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_dependency "httparty"

end
