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
  s.summary     = "Asyncomni is an engine, which can be used with a rails application for omniture integration."
  s.description = "More to come"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.9.0"
end
