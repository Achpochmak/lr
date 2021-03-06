# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

module ActiveSupport
  class TestCase
    fixtures :all
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors, with: :threads)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    include Devise::Test::IntegrationHelpers
    include Warden::Test::Helpers
    def log_in(user)
      if intgration_test?
        login_as(user, scope: :user)
      else
        sign_in(user)
      end
    end

    # Add more helper methods to be used by all tests here...
  end
end
