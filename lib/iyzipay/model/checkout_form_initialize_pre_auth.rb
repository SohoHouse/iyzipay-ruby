module Iyzipay
  module Model
    class CheckoutFormInitializePreAuth < IyzipayResource
      API_POINT = '/payment/iyzipos/checkoutform/initialize/preauth/ecom'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end