require "bundler/gem_tasks"
require "bundler/setup"
require "rspec/core/rake_task"

task :default => ["safran"]

desc "Run Safran"
task :safran do
  system "./bin/safran"
end

RSpec::Core::RakeTask.new
desc "Run Tests"
task :test => :spec