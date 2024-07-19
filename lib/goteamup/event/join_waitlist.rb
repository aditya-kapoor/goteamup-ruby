module Goteamup
  module Event
    class JoinWaitlist < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_params
        {
          customer: params[:customer]
        }
      end

      def request_method_klass
        Net::HTTP::Post
      end

      def endpoint
        "business/v1/events/#{params[:id]}/join_waitlist"
      end
    end
  end
end
