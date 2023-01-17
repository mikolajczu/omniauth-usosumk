require_relative "lib/omniauth-usosumk/version"

Gem::Specification.new do |spec|
  spec.name        = "omniauth-usosumk"
  spec.version     = Omniauth::Usosumk::VERSION
  spec.authors     = ["mikolajczu"]
  spec.email       = ["mikeyczu@gmail.com"]
  spec.homepage    = "https://github.com/mikolajczu/omniauth-usosumk.git"
  spec.summary     = "summary"
  spec.description = "Oauth strategy for Usos umk"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mikolajczu/omniauth-usosumk.git"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
end
