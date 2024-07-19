module Goteamup
  module Venue
    def self.list(params = {})
      List.call(params)
    end

    def self.show(params = {})
      Show.call(params)
    end
  end
end

require_relative './list'
require_relative './show'
