
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "purecloudclient_v2a/version"

Gem::Specification.new do |spec|
  spec.name          = "purecloudclient_v2a"
  spec.version       = PurecloudclientV2a::VERSION
  spec.authors       = ["Stewart McEwen"]
  spec.email         = ["sejmcewen@gmail.com"]

  spec.summary       = 'PC Test gem'
  spec.description   = 'Just a test'
  spec.homepage      = "https://www.google.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = Dir.glob("{bin,lib}/**/*")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "typhoeus", '~> 0'
end
