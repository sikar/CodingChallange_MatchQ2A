# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $:.include?(lib)
require 'matchQ2A/version'

Gem::Specification.new do |spec|
  spec.name          = "matchQ2A"
  spec.version       = MatchQ2A::VERSION
  spec.authors       = ["Sriram Indusekar"]
  spec.email         = ["sikar17@gmail.com"]

  spec.summary       = %q{Match the Jumbled Answers to respective Questions.}
  spec.description   = %q{Given a Input of a paragraph , Questions and its answers in Jumbled form will take care of matching the proper answers to its respective question through factual data available.}
  spec.homepage      = ""
  spec.license       = "UNLICENSE"

  spec.executables   = ["matchQ2A"]
  spec.files       = Dir.glob("lib/**/*.rb")
  spec.test_files  = Dir.glob("test/**/*.rb")
  #spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
