module Iyzipay
  module Model
    class ThreedsInitializePreAuth < IyzipayResource
      API_POINT = '/payment/iyzipos/initialize3ds/preauth/ecom'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end