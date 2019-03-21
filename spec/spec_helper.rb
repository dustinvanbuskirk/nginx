require 'chefspec'
require 'chefspec/berkshelf'
require 'allure-rspec'

RSpec.configure do |config|
  config.color = true               # Use color in STDOUT
  config.formatter = :documentation # Use the specified formatter
  config.log_level = :error         # Avoid deprecation notice SPAM

  # run all specs when using a filter, but no spec match
  config.run_all_when_everything_filtered = true

  config.include AllureRSpec::Adaptor # Export Allure Reports

  Ohai::Config[:log_level] = :error
end


AllureRSpec.configure do |c|
    c.output_dir = "/codefresh/volume/allure-results"
end