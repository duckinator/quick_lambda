# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spinny/quick_lambda/version'

Gem::Specification.new do |spec|
  spec.name          = "spinny-quick_lambda"
  spec.version       = Spinny::QuickLambda::VERSION
  spec.authors       = ["Marie Markwell"]
  spec.email         = ["me@marie.so"]
  spec.summary       = %q{Nice lambdas, kind of like what Scala offers.}
  spec.description   = spec.description
  spec.homepage      = "https://gitlab.com/spinny/spinny-quick_lambda"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
