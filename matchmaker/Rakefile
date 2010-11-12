require 'rspec/core/rake_task'
require "rcov/rcovtask"
 
task :default => "test"
 
desc "Run all specs."
task :test => "test:spec"

desc "Run test coverage reports."
task :coverage => "test:coverage"

desc "Clean."
task :clean do
  system "rm -rf reports"
end

namespace :test do
  desc "Run all specs."
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = FileList["spec/**/*_spec.rb"]
  end
 
  desc "Generate test coverage and specs reports."
  RSpec::Core::RakeTask.new(:coverage) do |rcov|
    rcov.rcov = true
    rcov.pattern = "reports/coverage"
    rcov.rspec_opts = ["--format", "html:reports/specs/index.html", "--diff"]
    rcov.fail_on_error = false
    rcov.verbose = true
  end
end