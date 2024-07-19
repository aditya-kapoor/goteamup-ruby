module Goteamup
  module Event
    class Register < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_params
        {
          customer:            params[:customer],
          comped:              params[:comped],
          customer_membership: params[:customer_membership],
        }
      end

      def request_method_klass
        Net::HTTP::Post
      end

      def endpoint
        "business/v1/events/#{params[:id]}/register"
      end
    end
  end
end
