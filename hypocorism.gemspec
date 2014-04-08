$:.push File.expand_path("../lib", __FILE__)
require "hypocorism"

Gem::Specification.new do |s|
  s.name        = 'hypocorism'
  s.version     = Hypocorism::VERSION
  s.summary     = 'Allows Rob to be matched with Robert, Bobby and Bob'
  s.description = 'A tool for matching English first names with their shortened version.'
  s.authors     = 'Rob Nichols'
  s.email       = 'rob@undervale.co.uk'
  s.homepage    = 'https://github.com/reggieb/hypocorism'
  s.license     = 'MIT-LICENSE'
  s.files       = Dir["lib/**/*"] + ["MIT-LICENSE", "README.md"] + Dir["data/**/*"]
  s.test_files  = Dir["test/**/*"]
end