# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nunes/datadog/version"

Gem::Specification.new do |spec|
  spec.name          = "nunes-datadog"
  spec.version       = Nunes::Datadog::VERSION
  spec.license       = "MIT"
  spec.authors       = ["Ylan Segal"]
  spec.email         = ["ylan@segal-family.com"]

  spec.summary       = "Adapter for the Nunes instrumentation library and the Datadog service"
  spec.description   = "Adapter for the Nunes instrumentation library and the Datadog service. \
                        This adapter is required because the dogstatsd-ruby gem3 does not implement the same API as \
                        the statsd-ruby gem, which works out-of-the-box with Nunes."
  spec.homepage      = "https://github.com/ylansegal/nunes-datadog"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "dogstatsd-ruby", "~> 1.5"
  spec.add_dependency "nunes", "~> 0.3.1"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
