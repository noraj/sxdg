# frozen_string_literal: true

require_relative 'lib/sxdg/version'

Gem::Specification.new do |spec|
  spec.name        = 'sxdg'
  spec.version     = SXDG::VERSION
  spec.summary     = 'sxdg is a simple xdg base dir library'
  spec.description = spec.summary

  spec.authors  = ['Robin Owen']
  spec.email    = 'vthrenody@gmail.com'
  spec.homepage = 'https://github.com/vthrenody/sxdg'

  spec.files        = %w(sxdg.gemspec) + Dir['*.md', 'lib/**/*.rb']
  spec.require_path = 'lib'
  spec.license      = 'Unlicense'

  spec.add_development_dependency 'sgem', '~> 1.0.0'
end
