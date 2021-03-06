lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-mutagen-project/version'

Gem::Specification.new do |spec|
  spec.name                  = 'vagrant-mutagen-project'
  spec.version               = VagrantPlugins::MutagenProject::VERSION
  spec.authors               = ['Simon Paulger']
  spec.email                 = ['spaulger@codezen.co.uk']
  spec.description           = 'Enables Vagrant to utilize Mutagen project for synchronisation'
  spec.summary               = spec.description
  spec.homepage              = 'https://github.com/spaulg/vagrant-mutagen-project'
  spec.license               = 'MIT'

  spec.files                 = `git ls-files`.split($/)
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.6'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
