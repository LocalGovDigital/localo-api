$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "waste/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "waste"
  s.version     = Waste::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Waste."
  s.description = "TODO: Description of Waste."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"
  s.add_dependency 'haml', ['>= 3.0.0']
  s.add_dependency 'haml-rails'

  s.add_development_dependency "sqlite3"
end
