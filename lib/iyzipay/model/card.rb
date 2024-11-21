module Iyzipay
  module Model
    class Card < IyzipayResource
      API_POINT = '/cardstorage/card'

      def create(request = {}, options)
        post_request(API_POINT, request, options)
      end

      def delete(request = {}, options)
        delete_request(API_POINT, request, options)
      end
    end
  end
end