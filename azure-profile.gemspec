require 'rubygems'

Gem::Specification.new do |spec|
  spec.name      = 'azure-profile'
  spec.version   = '1.0.0'
  spec.authors   = ['Daniel J. Berger', 'Bronagh Sorota']
  spec.license   = 'Artistic 2.0'
  spec.homepage  = 'http://github.com/djberg96/azure-profile'
  spec.summary   = 'An interface for Azure authentication information'
  spec.test_file = 'spec/azure_profile_spec.rb'
  spec.files     = Dir['**/*'].delete_if{ |item| item.include?('git') }

  spec.extra_rdoc_files = ['CHANGES', 'README', 'MANIFEST']

  spec.add_dependency('json')
  spec.add_dependency('nokogiri')
  spec.add_dependency('mechanize')

  spec.add_development_dependency('rspec')
  spec.add_development_dependency('rake')

  spec.description = <<-EOF
    This is a simple Ruby interface for gathering authentication and
    subscription information for Windows Azure. It will automatically
    gather subscription information based on a publishsettings file or
    an azureProfile.json file.
  EOF
end