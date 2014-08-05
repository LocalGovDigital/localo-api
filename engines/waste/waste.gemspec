$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "waste/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "waste"
  s.version     = Waste::VERSION
  s.authors     = ["later: Your name"]
  s.email       = ["later: Your email"]
  s.homepage    = "https://github.com/LocalGovDigital/localo/wiki/Bin-collections-service"
  s.summary     = "later: Summary of Waste."
  s.description = "later: Description of Waste."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.4"

  s.add_development_dependency "sqlite3"
end
