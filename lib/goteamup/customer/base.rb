module Goteamup
  module Customer
    def self.list(params = {})
      List.call(params)
    end

    def self.show(params = {})
      Show.call(params)
    end

    def self.create(params = {})
      Create.call(params)
    end

    def self.update(params = {})
      Update.call(params)
    end

    def self.accept_invite(params = {})
      AcceptInvite.call(params)
    end
  end
end

require_relative './list'
require_relative './show'
require_relative './create'
require_relative './update'
require_relative './accept_invite'
