# -*- ruby -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trim_blobs/version'

Gem::Specification.new do |gem|
  gem.name          = "trim_blobs"
  gem.version       = TrimBlobs::VERSION
  gem.authors       = ["Jarl Friis"]
  gem.email         = ["jarl@softace.dk"]
  gem.description   = %q{Trims all database logging of BLOBS}
  gem.summary       = %q{Trims all database logging of BLOBS}
  gem.homepage      = "https://github.com/softace/trim_blobs"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 1.9.0" #There is known issue with ruby 1.8, that prevents this gem on ruby 1.8, see http://bugs.ruby-lang.org/issues/show/1167
  gem.add_dependency('activerecord', '>= 3.2.0')

  gem.add_development_dependency('bundler')
  gem.add_development_dependency('rake')
  gem.add_development_dependency('appraisal', '~> 0.4')

end
