module Iyzipay
  module Model
    class SubMerchant < IyzipayResource

      def create(request = {}, options)
        path = '/onboarding/submerchant'
        post_request(path, request, options)
      end

      def update(request = {}, options)
        path = '/onboarding/submerchant'
        put_request(path, request, options)
      end

      def retrieve(request = {}, options)
        path = '/onboarding/submerchant/detail'
        post_request(path, request, options)
      end
    end
  end
end