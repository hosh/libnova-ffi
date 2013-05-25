require File.join([File.dirname(__FILE__),'lib','libnova-ffi','version.rb'])

Gem::Specification.new do |s|
  s.name        = "libnova-ffi"
  s.version     = LibNova::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ho-Sheng Hsiao"]
  s.email       = ["hosheng.hsiao@gmail.com"]
  s.homepage    = "http://github.com/hosh/libnova-ffi"
  s.summary     = "FFI wrapper for libnova"
  s.description = "FFI wrapper for libnova (VSO87 theory)"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "libnova-ffi"

  s.add_dependency "ffi"

  s.add_development_dependency "rspec"

  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.md)
  s.require_path = 'lib'
end
