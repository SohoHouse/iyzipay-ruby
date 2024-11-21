module Iyzipay
  module Model
    class CardList < IyzipayResource
      API_POINT = '/cardstorage/cards'

      def retrieve(request = {}, options)
        post_request(API_POINT, request, options)
      end

    end
  end
end