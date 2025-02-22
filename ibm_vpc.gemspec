# frozen_string_literal: true

require_relative "lib/ibm_vpc/version"

Gem::Specification.new do |spec|
  spec.name          = "ibm_vpc"
  spec.version       = IbmVpc::VERSION
  spec.authors       = ["dev@ibm.com"]
  spec.email         = ["dev@ibm.com"]

  spec.summary       = "IBM Cloud VPC Ruby SDK"
  spec.homepage      = "https://github.com/IBM/vpc-ruby-sdk"
  spec.licenses      = ["Apache-2.0"]
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.metadata["source_code_uri"]}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "concurrent-ruby", "~> 1.0"
  spec.add_runtime_dependency "http", "~> 4.1.0"
  spec.add_runtime_dependency "ibm_cloud_sdk_core", "~> 1.1.1"
  spec.add_runtime_dependency "jwt", "~> 2.2.1"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "codecov", "~> 0.1"
  spec.add_development_dependency "dotenv", "~> 2.4"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-hooks"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "minitest-retry"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "0.62"
  spec.add_development_dependency "simplecov", "~> 0.16"
  spec.add_development_dependency "webmock", "~> 3.4"
end
