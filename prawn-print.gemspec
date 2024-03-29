# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "prawn-print/version"

Gem::Specification.new do |s|
  s.name     = "prawn-print"
  s.version  = Prawn::Print::VERSION
  s.authors  = [ "Henrik Nyh" ]
  s.email    = [ "henrik@barsoom.se" ]
  s.homepage = "https://github.com/barsoom/prawn_print"
  s.summary  = %q{Autoprint generated PDFs from Adobe Reader.}
  s.metadata = { "rubygems_mfa_required" => "true" }

  s.files         = Dir["{lib,examples}/**/*.rb", "README.markdown"]
  s.require_paths = [ "lib" ]

  s.add_dependency "prawn", ">= 0.12.0"
end
