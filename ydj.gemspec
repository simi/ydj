# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ydj/version'

Gem::Specification.new do |spec|
  spec.name          = "ydj"
  spec.version       = Ydj::VERSION
  spec.authors       = ["Josef Šimánek"]
  spec.email         = ["retro@ballgag.cz"]
  spec.description   = %q{Download whole music youtube channel}
  spec.summary       = %q{And be awesome!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "youtube_it"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
