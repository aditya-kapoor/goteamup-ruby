module Goteamup
  module Auth
    class AccessToken < Base
      private

      def request_params
        {
          client_id:      Goteamup.configuration.client_id,
          client_secret:  Goteamup.configuration.client_secret,
          response_type:  params[:code]
        }
      end

      def headers
        {
          'Content-Type': 'multipart/form-data'
        }
      end

      def request_method_klass
        Net::HTTP::Post
      end

      def endpoint
        'auth/access_token'
      end
    end
  end
end
