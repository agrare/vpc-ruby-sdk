# frozen_string_literal: true

require "rake/testtask"
require "rubocop/rake_task"

task default: %w[def]

RuboCop::RakeTask.new

namespace :test do
  Rake::TestTask.new do |t|
    t.name = "unit"
    t.description = "Run unit tests"
    t.libs << "test"
    t.test_files = FileList["test/*.rb"]
    t.verbose = true
    t.warning = true
    t.deps = [:rubocop]
  end
end

desc "Run unit & integration tests"
task :test do
  Rake::Task["test:unit"].invoke
end

desc "Run tests and generate a code coverage report"
task :coverage do
  ENV["COVERAGE"] = "true" if ENV["TRAVIS_RUBY_VERSION"] == "2.5.1" || ENV["CI"].nil?
  Rake::Task["test"].execute
end

task def: %i[coverage] do
end
