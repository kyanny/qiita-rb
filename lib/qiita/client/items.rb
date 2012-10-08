module Qiita
  class Client
    module Items
      def post_item(params)
        post '/items', params
      end

      def update_item(uuid, params)
        put "/items/#{uuid}", params
      end

      def delete_item(uuid)
        delete "/items/#{uuid}"
      end

      def item(uuid)
        get "/items/#{uuid}"
      end

      def search_items(query, params)
        get "/search", params.merge(:q => query)
      end
    end
  end
end