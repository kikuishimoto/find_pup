require_relative 'lib/find_pup/version'

Gem::Specification.new do |spec|
  spec.name          = "find_pup"
  spec.version       = FindPup::VERSION
  spec.authors       = ["kikuishimoto"]
  spec.email         = ["kikuish@gmail.com"]

  spec.summary       = %q{I ate pineapple cherios and for some reason they tasted like ice cream.}
  spec.description   = %q{I ate pineapple cherios and for some reason they tasted like ice cream.}
  spec.homepage      = "http://www.bloop.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.bloop.com"
  spec.metadata["changelog_uri"] = "http://www.bloop.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
end
