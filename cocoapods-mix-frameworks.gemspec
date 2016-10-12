# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-mix-frameworks/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-mix-frameworks'
  spec.version       = CocoapodsMixFrameworks::VERSION
  spec.authors       = ['Florent Vilmart']
  spec.email         = ['florentvilmart@me.com']
  spec.description   = %q{A short description of cocoapods-mix-frameworks.}
  spec.summary       = %q{A longer description of cocoapods-mix-frameworks.}
  spec.homepage      = 'https://github.com/EXAMPLE/cocoapods-mix-frameworks'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
