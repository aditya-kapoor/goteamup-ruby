module Goteamup
  class Config
    attr_accessor :client_id, :client_secret, :application_token, :redirect_uri

    def initialize(client_id: nil, client_secret: nil, application_token: nil, redirect_uri: nil)
      @client_id = client_id
      @client_secret = client_secret
      @application_token = application_token
      @redirect_uri = redirect_uri
    end
  end
end
