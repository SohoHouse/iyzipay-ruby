module Iyzipay
  module Model
    class BasicBkm < IyzipayResource
      API_POINT = '/payment/iyziconnect/bkm/auth/detail'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end