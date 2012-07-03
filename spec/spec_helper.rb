require 'rubygems'
require 'rspec-puppet'

THISDIR = File.dirname(__FILE__)
root_path = File.dirname(THISDIR)

manifest_path = File.join(root_path, 'manifests')
manifest = File.join(manifest_path, 'stackhammer.pp')

module_path = [File.join(root_path, 'modules'), File.join(root_path, 'roles', 'production')].join(File::PATH_SEPARATOR)

RSpec.configure do |c|
  puts "manifest: #{manifest}"
  c.manifest = manifest

  puts "modulepath: #{module_path}"
  c.module_path = module_path
end
