module Iyzipay
  module Model
    class Refund < IyzipayResource
      API_POINT = '/payment/iyzipos/refund'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end