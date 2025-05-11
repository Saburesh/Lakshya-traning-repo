# frozen_string_literal: true

require_relative "lib/dance/version"

Gem::Specification.new do |spec|
  spec.name = "dance"
  spec.version = Dance::VERSION
  spec.authors = ["Dance Creator"]
  spec.email = ["dance@example.com"]

  spec.summary = "A CLI tool for dancing emojis and bears"
  spec.description = "A Ruby gem that displays dancing emojis and bears in the terminal"
  spec.homepage = "https://github.com/example/dance"
  spec.license = "Proprietary"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.glob(%w[lib/**/*.rb exe/dance README.md LICENSE.txt])
  spec.bindir = "exe"
  spec.executables = ["dance"]
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_dependency "thor", "~> 1.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
