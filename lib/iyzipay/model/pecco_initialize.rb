module Iyzipay
  module Model
    class PeccoInitialize < IyzipayResource
      API_POINT = '/payment/pecco/initialize'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end
    end
  end
end