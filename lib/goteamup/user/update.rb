module Goteamup
  module User
    class Show < Base
      private

      def headers
        {
          'Authorization' => Goteamup.configuration.application_token,
          'Business-ID'   => params[:business_id].to_s
        }
      end

      def request_method_klass
        Net::HTTP::Post
      end

      def endpoint
        'business/v1/user'
      end
    end
  end
end
