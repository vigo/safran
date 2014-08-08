# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safran/version'

Gem::Specification.new do |spec|
  spec.name          = "safran"
  spec.version       = Safran::VERSION
  spec.authors       = ["Serdar Dogruyol"]
  spec.email         = ["dogruyolserdar@gmail.com"]
  spec.summary       = %q{Safran.io için CLI okuyucu}
  spec.description   = %q{Safran.io için CLI okuyucu}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "colorize"
  spec.add_dependency "actionview"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
