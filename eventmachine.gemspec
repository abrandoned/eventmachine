require File.expand_path('../lib/em/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'eventmachine-pure_ruby'
  s.version = EventMachine::VERSION
  s.homepage = 'https://github.com/abrandoned/eventmachine-pure_ruby'
  s.licenses = ['Ruby', 'GPL-2.0']

  s.authors = ["Francis Cianfrocca", "Aman Gupta", "rm's by Brandon"]
  s.email   = ["garbagecat10@gmail.com", "aman@tmm1.net", "brandonsdewitt+rubygems@gmail.com"]

  s.files = `git ls-files README.md CHANGELOG.md GNU LICENSE rakelib lib docs`.split
  s.test_files = `git ls-files tests examples`.split

  s.add_development_dependency 'test-unit', '~> 2.0'
  s.add_development_dependency 'rake'

  s.summary = 'Ruby/EventMachine library (only the pure_ruby eventmachine)'
  s.description = <<-EOT
EventMachine implements a fast, single-threaded engine for arbitrary network
communications. It's extremely easy to use in Ruby. EventMachine wraps all
interactions with IP sockets, allowing programs to concentrate on the
implementation of network protocols. It can be used to create both network
servers and clients. To create a server or client, a Ruby program only needs
to specify the IP address and port, and provide a Module that implements the
communications protocol. Implementations of several standard network protocols
are provided with the package, primarily to serve as examples. The real goal
of EventMachine is to enable programs to easily interface with other programs
using TCP/IP, especially if custom protocols are required.

THIS IS ONLY THE PURE_RUBY CODE FOR EVENTMACHINE, IF THAT IS A NEED OF YOURS
THEN USE IT BY INCLUDING gem 'eventmachine-pure_ruby', :require => 'eventmachine'
IN YOUR GEMFILE
EOT

  s.rdoc_options = ["--title", "EventMachine", "--main", "README.md", "-x", "lib/em/version"]
  s.extra_rdoc_files = `git ls-files README.md docs`.split
end
