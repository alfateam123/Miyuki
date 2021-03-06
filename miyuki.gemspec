Kernel.load 'lib/miyuki/version.rb'

Gem::Specification.new do |s|
  s.name          = 'miyuki'
  s.version       = Miyuki::VERSION
  s.author        = 'Roxas Shadow'
  s.email         = 'webmaster@giovannicapuano.net'
  s.homepage      = 'https://github.com/RoxasShadow/Miyuki'
  s.platform      = Gem::Platform::RUBY
  s.summary       = 'Miyuki allows you to not miss any episode of anime you\'re watching'
  s.description   = 'Miyuki downloads automatically every episode of anime you\'re watching'
  s.files         = `git ls-files -z`.split("\0")
  s.require_path  = 'lib'
  s.executables   = 'miyuki'
  s.license       = 'WTFPL'

  s.add_dependency 'yamazaki',        '~> 0.3', '>= 0.3.4'
  s.add_dependency 'rufus-scheduler', '~> 3.0'
  s.add_dependency 'foreverb',        '~> 0.3'
  s.add_dependency 'filewatcher',     '~> 0.3', '>= 0.3.6'
  s.add_dependency 'ruby_deep_clone', '~> 0.6'

  case RUBY_PLATFORM
    when /darwin/ then s.add_dependency 'terminal-notifier', '~> 1.6'
    when /linux/  then s.add_dependency 'libnotify',         '~> 0.8'
    when /mswin|msys|mingw|cygwin/ then s.add_dependency 'rb-notifu', '~> 0.0'
  end

  s.add_development_dependency 'cucumber', '~> 1.3'
  s.add_development_dependency 'rspec', '~> 3.2'
end
