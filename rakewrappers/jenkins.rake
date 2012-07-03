require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

namespace :jenkins do
  Dir.chdir(File.join(THISDIR, '..', 'modules/jenkins'))
  load 'Rakefile'
end

task :default => ['ci:setup:rspec', 'jenkins:spec']
