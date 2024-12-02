module Iyzipay
  module Model
    class Disapproval < IyzipayResource
      API_POINT = '/payment/iyzipos/item/disapprove'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end