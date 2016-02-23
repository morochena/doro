# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','doro','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'doro'
  s.version = Doro::VERSION
  s.author = 'Marcus Orochena'
  s.email = 'marcus@orochena.net'
  s.homepage = 'http://www.orochena.net'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A minimalist pomodoro application'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','doro.rdoc']
  s.rdoc_options << '--title' << 'doro' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'doro'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.4')
end
