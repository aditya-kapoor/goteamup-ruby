module Goteamup
  module CustomerMembership
    class List < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s,
          'Customer-ID'   => params[:customer_id].to_s
        }
      end

      def request_method_klass
        Net::HTTP::Get
      end

      def endpoint
        "business/v1/customermemberships#{query}"
      end

      def query
        return '' if params[:query].blank?

        "?#{params[:query].to_h.to_query}"
      end
    end
  end
end