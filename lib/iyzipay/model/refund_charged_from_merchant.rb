module Iyzipay
  module Model
    class RefundChargedFromMerchant < IyzipayResource
      API_POINT = '/payment/iyzipos/refund/merchant/charge'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end