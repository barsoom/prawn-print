# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "prawn-print/version"

Gem::Specification.new do |s|
  s.name        = "prawn-print"
  s.version     = Prawn::Print::VERSION
  s.authors     = ["Henrik Nyh"]
  s.email       = ["henrik@barsoom.se"]
  s.homepage    = "https://github.com/barsoom/prawn_print"
  s.summary     = %q{Autoprint generated PDFs from Adobe Reader.}

  s.rubyforge_project = "prawn-print"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "prawn", "> 0.12.0"

  s.add_development_dependency "rspec"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
end
