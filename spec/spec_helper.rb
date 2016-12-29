require_relative 'support/controller_helpers'
require 'devise'
require 'faker'

RSpec.configure do |config|
  config.include ControllerHelpers, type: :controller
  Warden.test_mode!

  config.after do
    Warden.test_reset!
  end
end
