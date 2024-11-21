module Iyzipay
  module Model
    class BasicBkmInitialize < IyzipayResource
      API_POINT = '/payment/iyziconnect/bkm/initialize'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end