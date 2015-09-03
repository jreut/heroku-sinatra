require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :spec

Dir.glob(File.join([__dir__, 'lib', 'tasks', '**/*.rake']))
  .each { |f| load f }

task default: :spec
