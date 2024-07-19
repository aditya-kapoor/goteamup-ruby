module Goteamup
  module Auth
    def self.authorize(params = {})
      Authorize.call(params)
    end

    def self.access_token(params = {})
      AccessToken.call(params)
    end
  end
end

require_relative './auth/authorize'
require_relative './auth/access_token'
