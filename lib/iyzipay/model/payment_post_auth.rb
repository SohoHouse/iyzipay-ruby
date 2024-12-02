module Iyzipay
  module Model
    class PaymentPostAuth < IyzipayResource
      API_POINT = '/payment/iyzipos/postauth'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end