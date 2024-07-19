# frozen_string_literal: true

require_relative "goteamup/version"

module Goteamup
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Config.new
      yield(configuration)
    end
  end
end

require_relative 'goteamup/config'
require_relative 'goteamup/base'
require_relative 'goteamup/auth'
require_relative 'goteamup/attendances/base'
require_relative 'goteamup/business/base'
require_relative 'goteamup/customer/base'
require_relative 'goteamup/customer_membership/base'
require_relative 'goteamup/user/base'
require_relative 'goteamup/venue/base'
require_relative 'goteamup/event/base'
