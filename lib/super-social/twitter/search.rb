module Twitter
  
  class Search
    extend SuperSocial::Web
    BASE_URL = "http://search.twitter.com/search.json"
    
    class << self
      
      def perform_search(params = {})
        parse_response(RestClient.get("#{BASE_URL}#{append_params(params)}"))
      end
      
    end

  end
  
end
