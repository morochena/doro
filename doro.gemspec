# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','doro','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'doro'
  s.version = Doro::VERSION
  s.author = 'Marcus Orochena'
  s.email = 'marcus@orochena.net'
  s.homepage = 'https://github.com/morochena/doro'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A minimalist pomodoro cli application'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.rdoc_options << '--title' << 'doro' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'doro'
  s.add_development_dependency('rake', '~> 10.5')
  s.add_development_dependency('rdoc', '~> 4.2')
  s.add_development_dependency('aruba', '~> 0.13')

  s.add_dependency('ruby-progressbar', '~> 1.7')
  s.add_dependency('notifier', '~> 0.5')
  s.add_dependency('terminal-notifier', '~> 1.6')

  s.add_runtime_dependency('gli','2.13.4')
end
