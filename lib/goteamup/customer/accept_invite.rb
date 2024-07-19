module Goteamup
  module Customer
    class AcceptInvite < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_params
        {
          email:       params[:email],
          invite_code: params[:invite_code],
          token:       params[:token],
          password:    params[:password]
        }
      end

      def request_method_klass
        Net::HTTP::Post
      end

      def endpoint
        'business/v1/accept_invite'
      end
    end
  end
end
