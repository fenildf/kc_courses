# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kc_courses/version'

Gem::Specification.new do |spec|
  spec.name          = "kc_courses"
  spec.version       = KcCourses::VERSION
  spec.authors       = ["destinyd"]
  spec.email         = ["destinyd_war@163.com"]

  spec.summary       = ""
  spec.description   = ""
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  # 以下为 rails engine 依赖
  spec.add_development_dependency 'actionpack', '~> 4.2.0'
  spec.add_development_dependency 'activesupport', '~> 4.2.0'

  spec.add_development_dependency 'jquery-rails', '>= 3.1.0'
  spec.add_development_dependency 'uglifier'
  spec.add_development_dependency 'figaro'

  spec.add_dependency 'mongoid-tree'
  spec.add_dependency 'ruby-pinyin'
  spec.add_dependency 'enumerize', '2.0.0'
end
