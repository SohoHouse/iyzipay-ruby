module Iyzipay
  module Model
    class BasicThreedsPayment < IyzipayResource
      API_POINT = '/payment/iyziconnect/auth3ds'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end