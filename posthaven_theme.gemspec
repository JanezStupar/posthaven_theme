# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "posthaven_theme/version"

Gem::Specification.new do |s|
  s.name        = "posthaven_theme"
  s.version     = PosthavenTheme::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Brett Gibson"]
  s.email       = ["help@posthaven.com"]
  s.homepage    = "https://github.com/posthaven/posthaven_theme"
  s.summary     = %q{Command line tool for developing themes}
  s.description = %q{Command line tool to help with developing Posthaven themes. Provides simple commands to download, upload and delete files from a theme. Also includes the watch command to watch a directory and upload files as they change.}
  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.4.3'

  s.add_dependency('thor', '~> 1.0')
  s.add_dependency('httparty', '~> 0.18.1')
  s.add_dependency('json', '~> 2.6.2')
  s.add_dependency('mimemagic', '~> 0.3.10')
  s.add_dependency('filewatcher', '~> 2.1')

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'minitest', '~> 5.15.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
