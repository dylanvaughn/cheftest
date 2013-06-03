# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cheftest/version'

Gem::Specification.new do |spec|
  spec.name          = "cheftest"
  spec.version       = Cheftest::VERSION
  spec.authors       = ["Dylan Vaughn"]
  spec.email         = ["dylancvaughn@gmail.com"]
  spec.description   = %q{Gem providing rake tasks to help with chef cookbook testing}
  spec.summary       = %q{Includes: foodcritic, knife test}
  spec.homepage      = "https://github.com/dylanvaughn/cheftest"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'foodcritic'
  spec.add_runtime_dependency 'chef'
  spec.add_runtime_dependency 'rspec'
  spec.add_runtime_dependency 'chefspec'

end
