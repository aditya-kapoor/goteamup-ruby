module Goteamup
  module Business
    class Show < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:id].to_s
        }
      end

      def request_method_klass
        Net::HTTP::Get
      end

      def endpoint
        'business/v1/business'
      end
    end
  end
end
