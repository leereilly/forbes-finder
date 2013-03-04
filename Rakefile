# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "forbes-finder"
  gem.homepage = "http://github.com/leereilly/forbes-finder"
  gem.license = "MIT"
  gem.summary = %Q{Look up Forbes 2000 companies based on a domain name or email address}
  gem.description = %Q{Look up Forbes 2000 companies based on a domain name or email address}
  gem.email = "lee@leereilly.net"
  gem.authors = ["Lee Reilly"]
  gem.post_install_message = "*******************************************************************************\n\n  Thank you for installing the forbes-finder gem!\n\n  CONTRIBUTIONS GRATEFULLY ACCEPTED! Please consider contributing by looking at\n  https://github.com/leereilly/forbes-finder/blob/master/CONTRIBUTING.md for\n  ideas.\n\n*******************************************************************************"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "forbes-finder #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
