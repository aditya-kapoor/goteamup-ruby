module Goteamup
  module User
    def self.show(params = {})
      Show.call(params)
    end

    def self.update(params = {})
      Update.call(params)
    end
  end
end

require_relative './update'
require_relative './show'
