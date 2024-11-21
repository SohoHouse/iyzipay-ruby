module Iyzipay
  module Model
    class ApiTest < IyzipayResource
      API_POINT = '/payment/test'

      def retrieve(options)
        HttpClient.get("#{options.base_url}#{API_POINT}")
      end
    end
  end
end