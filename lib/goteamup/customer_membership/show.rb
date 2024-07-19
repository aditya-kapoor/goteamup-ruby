module Goteamup
  module CustomerMembership
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
        "business/v1/customermemberships/#{params[:id]}"
      end
    end
  end
end
