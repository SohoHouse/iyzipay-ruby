module Iyzipay
  module Model
    class ThreedsInitialize < IyzipayResource
      API_POINT = '/payment/iyzipos/initialize3ds/ecom'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end

    end
  end
end