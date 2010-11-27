# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "regulate/version"

Gem::Specification.new do |s|
  s.name        = "regulate"
  s.version     = Regulate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Collin Schaafsma"]
  s.email       = ["collin@quickleft.com"]
  s.homepage    = ""
  s.summary     = %q{Simple CMS which allows you to control what regions of a page can be managed.}
  s.description = %q{Simple CMS which allows you to control what regions of a page can be managed. Delivered as a Rails 3 engine.}

  s.rubyforge_project = "regulate"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
