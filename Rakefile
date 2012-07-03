require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :demo do
  RSpec::Core::RakeTask.new(:allspecs => ["ci:setup:rspec"]) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

task :default => ['demo:allspecs']
