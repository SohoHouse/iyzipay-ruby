module Iyzipay
  module Model
    class ThreedsPayment < IyzipayResource

      def create(request = {}, options)
        path = '/payment/iyzipos/auth3ds/ecom'
        post_request(path, request, options)
      end

      def retrieve(request = {}, options)
        path = '/payment/detail'
        post_request(path, request, options)
      end
    end
  end
end