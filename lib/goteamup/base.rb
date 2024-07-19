module Goteamup
  class Base
    BASE_URL = 'https://goteamup.com/api'

    attr_reader :params, :result

    def self.call(params)
      new(params).tap do |object|
        object.make_request
        object.package_result
      end
    end

    def initialize(params)
      @params = params
    end

    def make_request
      http = Net::HTTP.new(request_url.host, request_url.port)
      http.use_ssl = true
      http.set_debug_output($stdout) unless Rails.env.production?
      request = request_method_klass.new(request_url, request_headers)
      request.body = request_params.to_json unless request_method_klass == Net::HTTP::Get
      @response = http.request(request)
    end

    def package_result
      response = JSON.parse(@response.body) rescue ''
      @result = { response: response, status_code: @response.code, success: success? }
    end

    private

    def request_params
      {}
    end

    def request_headers
      {
        'Content-Type' => 'application/json'
      }.merge(headers)
    end

    def request_url
      @request_url ||= URI([BASE_URL, endpoint].join('/'))
    end

    def success?
      (@response.code.to_i / 100) == 2
    end
  end
end
