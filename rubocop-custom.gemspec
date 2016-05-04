$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'rubocop/custom/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-custom'
  spec.summary = 'Code style checking'
  spec.description = 'customish'
  spec.homepage = 'http://github.com/bwvoss/rubocop-custom'
  spec.authors = ['Ben Voss']
  spec.email = ['bwvoss@gmail.com']
  spec.licenses = ['MIT']

  spec.version = RuboCop::Custom::Version
  # spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 1.9.3'

  spec.require_paths = ['lib']
  spec.files = Dir[
    '{config,lib,spec}/**/*',
    '*.md',
    '*.gemspec',
    'Gemfile',
    'Rakefile'
  ]
  spec.test_files = spec.files.grep(%r{^spec/})

  spec.add_runtime_dependency 'rubocop', '0.39.0'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec', '>= 3.4'
  spec.add_development_dependency 'simplecov'
end
