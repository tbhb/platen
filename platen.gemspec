# frozen_string_literal: true

require_relative "lib/platen/version"

version = Platen::VERSION::STRING

Gem::Specification.new do |spec|
  spec.name = "platen"
  spec.version = version
  spec.author = "Tony Burns"
  spec.email = "tony@tonyburns.net"

  spec.summary = "Create projects and components from laps"
  spec.description = ""
  spec.homepage = "https://platen.tbhb.dev"
  spec.license = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/tbhb/platen/issues",
    "changelog_uri" => "https://github.com/tbhb/platen/blob/v#{version}/CHANGELOG.md",
    "documentation_uri" => "https://platen.tbhb.dev/v#{version}/",
    "mailing_list_uri" => "https://github.com/tbhb/platen/discussions",
    "source_code_uri" => "https://github.com/tbhb/platen/tree/v#{version}",
    "rubygems_mfa_required" => "true"
  }

  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = ">= 3.1.0"

  spec.files = Dir["exe/*", "lib/**/*.rb", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]

  spec.bindir = "exe"
  spec.executables = %w[platen]

  spec.add_dependency "thor", "~> 1.3"
end
