module Iyzipay
  module Model
    class InstallmentInfo < IyzipayResource
      API_POINT = '/payment/iyzipos/installment'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end