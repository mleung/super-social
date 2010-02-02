module Vimeo
  
  class Search < Vimeo::Base
    extend SuperSocial::Web

    class << self
      
      def search(query_text)
        parse_response(RestClient.get(("#{BASE_URL}/?format=json&method=vimeo.videos.search&query=#{query_text}")))
      end
      
    end
    
  end
end
