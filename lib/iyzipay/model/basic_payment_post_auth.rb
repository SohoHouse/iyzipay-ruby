module Iyzipay
  module Model
    class BasicPaymentPostAuth < IyzipayResource
      API_POINT = '/payment/iyziconnect/postauth'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end