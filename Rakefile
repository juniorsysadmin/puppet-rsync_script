require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'

PuppetLint.configuration.send("disable_80chars")
PuppetLint.configuration.relative = true
PuppetLint.configuration.log_format = "%{path}:%{linenumber}:%{check}:%{KIND}:%{message}"
PuppetLint.configuration.fail_on_warnings = true

# Forsake support for Puppet 2.6.2 for the benefit of cleaner code.
# http://puppet-lint.com/checks/class_parameter_defaults/
PuppetLint.configuration.send('disable_class_parameter_defaults')
# http://puppet-lint.com/checks/class_inherits_from_params_class/
PuppetLint.configuration.send('disable_class_inherits_from_params_class')
PuppetLint.configuration.ignore_paths = ["pkg/**/*", "vendor/**/*", "spec/**/*",]

PuppetSyntax.exclude_paths = ["pkg/**/*", "vendor/**/*", "spec/**/*",]

desc "Run acceptance tests"
RSpec::Core::RakeTask.new(:acceptance) do |t|
  t.pattern = 'spec/acceptance'
end

desc "Run syntax and lint tests."
task :test => [
  :syntax,
  :lint,
]
