$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "simple_jwt_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "simple_jwt_auth"
  spec.version     = SimpleJwtAuth::VERSION
  spec.authors     = ["brye"]
  spec.email       = ["bryewalks@gmail.com"]
  spec.homepage    = "https://github.com/bryewalks/simple_auth"
  spec.summary     = "JWT based authorization"
  spec.description = "JWT based authorization that includes current_user helper"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2"
  spec.add_dependency 'bcrypt', '~> 3.1.7'
  spec.add_dependency 'jwt'
  spec.add_dependency 'tty-file'

  spec.add_development_dependency "pg"
end
