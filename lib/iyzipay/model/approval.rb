module Iyzipay
  module Model
    class Approval < IyzipayResource
      API_POINT = '/payment/iyzipos/item/approve'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end