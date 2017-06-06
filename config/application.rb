require_relative 'boot'

# Load only the individual parts of Rails that we need here instead of 'rails/all'
require 'action_controller/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

module ConsultLoop
  class Application < Rails::Application
    config.load_defaults 5.1 if (Rails::VERSION::MAJOR == 5 && Rails::VERSION::MINOR == 1)
  end
end
