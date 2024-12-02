module Iyzipay
  module Model
    class Bkm < IyzipayResource
      API_POINT = '/payment/iyzipos/bkm/auth/ecom/detail'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end

    end
  end
end