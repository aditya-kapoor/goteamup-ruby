module Goteamup
  module CustomerMembership
    def self.list(params = {})
      List.call(params)
    end

    def self.show(params = {})
      Show.call(params)
    end

    def self.usage(params = {})
      Usage.call(params)
    end
  end
end

require_relative './show'
require_relative './list'
require_relative './usage'
