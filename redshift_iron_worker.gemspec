# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redshift_iron_worker/version'

Gem::Specification.new do |spec|
  spec.name          = "redshift_iron_worker"
  spec.version       = RedshiftIronWorker::VERSION
  spec.authors       = ["Iain Gray"]
  spec.email         = ["iain@quantdeck.com"]
  spec.summary       = %q{Helper methods for using Redshift on Iron.io IronWorker}  
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "pg", '~> 0.17.1'
  spec.add_runtime_dependency "net-ssh-gateway", "~> 1.2.0"
  spec.add_runtime_dependency 'contracts', '~> 0.4'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
