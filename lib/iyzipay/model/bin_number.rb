module Iyzipay
  module Model
    class BinNumber < IyzipayResource
      API_POINT = '/payment/bin/check'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end