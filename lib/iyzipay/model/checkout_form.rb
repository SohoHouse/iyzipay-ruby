module Iyzipay
  module Model
    class CheckoutForm < IyzipayResource
      API_POINT = '/payment/iyzipos/checkoutform/auth/ecom/detail'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end