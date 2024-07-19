module Goteamup
  module Auth
    class Authorize < Base

      def make_request
        http = Net::HTTP.new(request_url.hostname, request_url.port)
        http.use_ssl = true
        http.set_debug_output($stdout) unless Rails.env.production?
        request = request_method_klass.new(request_url, request_headers)
        request.set_form request_params, 'multipart/form-data'
        @response = http.request(request)
      end

      private

      def request_params
        [
          ['client_id', Goteamup.configuration.client_id],
          ['redirect_uri', Goteamup.configuration.redirect_uri || params[:redirect_uri]],
          ['response_type', 'code'],
          ['scope', params[:scope] || 'read'],
          ['state', params[:state].to_s],
        ]
      end

      def headers
        {
          'Content-Type' => 'multipart/form-data'
        }
      end

      def request_method_klass
        Net::HTTP::Get
      end

      def endpoint
        'auth/authorize'
      end
    end
  end
end
