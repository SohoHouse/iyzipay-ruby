module Iyzipay
  module Model
    class PaymentPreAuth < IyzipayResource

      def create(request = {}, options)
        path = '/payment/iyzipos/preauth/ecom'
        post_request(path, request, options)
      end

      def retrieve(request = {}, options)
        path = '/payment/detail'
        post_request(path, request, options)
      end

    end
  end
end