module Iyzipay
  module Model
    class CheckoutFormInitialize < IyzipayResource
      API_POINT = '/payment/iyzipos/checkoutform/initialize/ecom'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end