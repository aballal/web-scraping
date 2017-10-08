require 'aruba'
require 'aruba/api'
require 'pathname'
require 'simplecov'
require 'simplecov-console'

require_relative 'helpers'

Aruba.configure do |config|
  config.working_directory = 'output'
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.include Helpers
  config.include Aruba::Api

  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
