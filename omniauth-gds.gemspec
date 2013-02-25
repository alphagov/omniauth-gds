# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-gds/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mazz", "Blaine"]
  gem.email         = ["mazz.mosley@digital.cabinet-office.gov.uk", "romeda@gmail.com"]
  gem.description   = %q{ Omniauth strategy for GDS oauth2 provider }
  gem.summary       = %q{ Omniauth strategy for GDS oauth2 provider }
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-gds"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Gds::VERSION

  gem.add_dependency 'omniauth-oauth2', '~> 1.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency "gemfury"
  gem.add_development_dependency 'gem_publisher', '1.2.0'

end
