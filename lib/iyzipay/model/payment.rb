module Iyzipay
  module Model
    class Payment < IyzipayResource
      def create(request = {}, options)
        signature_fields = %w[paymentId currency basketId conversationId paidPrice price]
        path = '/payment/iyzipos/auth/ecom'
        post_request(path, request, options, signature_fields)
      end

      def retrieve(request = {}, options)
        signature_fields = %w[paymentId currency basketId conversationId paidPrice price]
        path = '/payment/detail'
        post_request(path, request, options, signature_fields)
      end
    end
  end
end