require 'rubygems'
require 'ci/reporter/rake/rspec'
require 'rspec/core/rake_task'

THISDIR = File.dirname(__FILE__)

def runapt()
  Dir.chdir(File.join(THISDIR, '..', 'modules/apt'))
  load 'Rakefile'
  Rake::Task['spec'].invoke
end

namespace :apt do
  task :spec do
    runapt()
  end
end

task :default => ['ci:setup:rspec', 'apt:spec']
