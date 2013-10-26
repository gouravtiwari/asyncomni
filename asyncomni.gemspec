$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "asyncomni/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "asyncomni"
  s.version     = Asyncomni::VERSION
  s.authors     = ["Gourav Tiwari"]
  s.email       = ["gouravtiwari21@gmail.com"]
  s.homepage    = "https://github.com/gouravtiwari/asyncomni"
  s.summary     = "Makes omniture calls from rails 3.1 easier and asynchronous without ajax-calls"
  s.description = "Asyncomni is an engine, which can be used with a rails application for omniture integration."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 3.2.2"
  s.add_dependency "haml", "~> 3.1.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.9.0"
end
