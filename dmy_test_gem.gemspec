
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dmy_test_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "dmy_test_gem"
  spec.version       = DmyTestGem::VERSION
  spec.authors       = ["dongmy54"]
  spec.email         = ["615760433@qq.com"]

  spec.summary       = %q{学习的gem测试使用}
  spec.description   = %q{功能：将当前时间转化为星期}
  # 首页地址
  spec.homepage      = "https://github.com/ruby/dmy_test_gem" 
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  
  #注释掉的目的时，允许推到所有host
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # `git ls-files -z`命令会列出当前文件 所有目录
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
