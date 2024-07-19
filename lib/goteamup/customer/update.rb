module Goteamup
  module Customer
    class Update < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_params
        {
          first_name: params[:first_name],
          last_name:  params[:last_name],
          fields:     params[:fields]
        }
      end

      def request_method_klass
        Net::HTTP::Put
      end

      def endpoint
        "business/v1/customers/#{params[:id]}"
      end
    end
  end
end
