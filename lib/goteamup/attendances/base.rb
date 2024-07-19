module Goteamup
  module Attendances
    def self.list(params = {})
      List.call(params)
    end

    def self.show(params = {})
      Show.call(params)
    end

    def self.confirm(params = {})
      Confirm.call(params)
    end

    def self.no_show(params = {})
      NoShow.call(params)
    end
  end
end

require_relative './show'
require_relative './list'
require_relative './confirm'
require_relative './no_show'
