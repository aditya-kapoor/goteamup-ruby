module Goteamup
  module Business
    def self.show(params = {})
      Show.call(params)
    end
  end
end

require_relative './show'
