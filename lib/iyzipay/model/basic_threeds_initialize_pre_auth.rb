module Iyzipay
  module Model
    class BasicThreedsInitializePreAuth < IyzipayResource
      API_POINT = '/payment/iyziconnect/initialize3ds/preauth'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end