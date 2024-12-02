module Iyzipay
  module Model
    class Cancel < IyzipayResource
      API_POINT = '/payment/iyzipos/cancel'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end