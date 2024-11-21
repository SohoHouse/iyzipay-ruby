module Iyzipay
  module Model
    class BouncedBankTransferList < IyzipayResource
      API_POINT = '/reporting/settlement/bounced'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end