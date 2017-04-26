# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jbuilder/compiler/version'

Gem::Specification.new do |spec|
  spec.name          = "jbuilder-compiler"
  spec.version       = Jbuilder::Compiler::VERSION
  spec.authors       = ["David Albert"]
  spec.email         = ["davidbalbert@gmail.com"]

  spec.summary       = %q{Compiler Jbuilder templates into pure Ruby}
  spec.description   = %q{Compiler Jbuilder templates into pure Ruby}
  spec.homepage      = "https://github.com/davidbalbert/jbuilder-compiler"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-doc"

  spec.add_dependency "ruby_parser", "~> 3.9.0"
  spec.add_dependency "sexp_processor", "~> 4.9.0"
  spec.add_dependency "ruby2ruby", "~> 2.3.2"
end
