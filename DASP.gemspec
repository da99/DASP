# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "DASP/version"

Gem::Specification.new do |s|
  s.name        = "DASP"
  s.version     = DASP::VERSION
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = ""
  s.summary     = %q{Various commands for personal use.}
  s.description = %q{Mainly used as: DASP commands INPUT}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bacon"
  s.add_development_dependency "rake"
  s.add_development_dependency 'Bacon_Colored'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'Exit_Zero'
  
  # s.rubyforge_project = "DASP"
  # specify any dependencies here; for example:
  # s.add_runtime_dependency "rest-client"
end
