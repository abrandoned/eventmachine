require 'rubygems'
require 'rubygems/package_task'

Gem::PackageTask.new(GEMSPEC) do |pkg|
end

Rake::Task[:clean].enhance [:clobber_package]
