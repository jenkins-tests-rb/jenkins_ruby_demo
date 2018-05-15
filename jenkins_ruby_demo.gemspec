# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jenkins_ruby_demo/version"

Gem::Specification.new do |spec|
  spec.name          = "jenkins_ruby_demo"
  spec.version       = JenkinsRubyDemo::VERSION
  spec.authors       = ["Dummy"]
  spec.email         = ["dummy@dummy.com"]

  spec.summary       = %q{Summary.}
  spec.description   = %q{Description.}
  #spec.homepage      = "Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
      spec.metadata["allowed_push_host"] = "'http://nonexistentserver.lkjlkjlkj.adfasdf.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
