module Iyzipay
  module Model
    class BasicPaymentPreAuth < IyzipayResource
      API_POINT = '/payment/iyziconnect/preauth'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end