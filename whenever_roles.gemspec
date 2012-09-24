# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whenever_roles/version'

Gem::Specification.new do |gem|
  gem.name          = 'whenever_roles'
  gem.version       = WheneverRoles::VERSION
  gem.authors       = ['Ralph von der Heyden']
  gem.email         = ['ralph@rvdh.de']
  gem.description   = %q{Whenever roles for multiple environments}
  gem.summary       = %q{Whenever roles for multiple environments}
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.add_dependency('whenever')
end
