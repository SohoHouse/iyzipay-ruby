module Iyzipay
  module Model
    class CrossBookingToSubMerchant < IyzipayResource
      API_POINT = '/crossbooking/send'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end