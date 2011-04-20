# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "content_lang_middleware/version"

Gem::Specification.new do |s|
  s.name        = "content_lang_middleware"
  s.version     = ContentLangMiddleware::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nicolas Dillmann"]
  s.email       = ["nicolas.dillmann@zweitag.de"]
  s.homepage    = ""
  s.summary     = %q{Write a gem summary}
  s.description = %q{ Write a gem description}

  s.rubyforge_project = "content_lang_middleware"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
