module Iyzipay
  module Model
    class BkmInitialize < IyzipayResource
      API_POINT = '/payment/iyzipos/bkm/initialize/ecom'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end