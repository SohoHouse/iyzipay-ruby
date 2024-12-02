module Iyzipay
  module Model
    class BasicPayment < IyzipayResource
      API_POINT = '/payment/iyziconnect/auth'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end

    end
  end
end