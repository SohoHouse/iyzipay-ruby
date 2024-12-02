module Iyzipay
  module Model
    class PayoutCompletedTransactionList < IyzipayResource
      API_POINT = '/reporting/settlement/payoutcompleted'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end