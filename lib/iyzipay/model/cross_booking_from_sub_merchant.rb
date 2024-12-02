module Iyzipay
  module Model
    class CrossBookingFromSubMerchant < IyzipayResource
      API_POINT = '/crossbooking/receive'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end