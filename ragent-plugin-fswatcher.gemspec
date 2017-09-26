# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ragent/plugin/fswatcher/version"

Gem::Specification.new do |spec|
  spec.name          = "ragent-plugin-fswatcher"
  spec.version       = Ragent::Plugin::Fswatcher::VERSION
  spec.authors       = ["Peter Schrammel"]
  spec.email         = ["peter.schrammel@preisanalytics.de"]

  spec.summary       = %q{A Plugin for ragent to watch fs changes.}
  spec.description   = %q{Ragent is a small framework to run celluloid agents. Fswatcher is a plugin that watches filechanges and throws notifications when they happen}
  spec.homepage      = "https://github.com/ruby-ragent/ragent-plugin-fswatcher"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'celluloid-io', "~> 0.17"
  spec.add_dependency 'rb-inotify', "~> 0.9"
  

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
