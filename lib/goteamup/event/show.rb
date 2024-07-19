module Goteamup
  module Event
    class Show < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_method_klass
        Net::HTTP::Get
      end

      def endpoint
        "business/v1/events/#{params[:id]}"
      end
    end
  end
end
