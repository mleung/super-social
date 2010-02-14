module Flickr
  
  class People < Flickr::Base
    extend SuperSocial::Web

    class << self
      
      STANDARD_PARMS = "&format=json&nojsoncallback=1"
      
      def find_by_username(username)
        parse_response(RestClient.get("#{BASE_URL}/?method=flickr.people.findByUserName&api_key=52d0985b65be3bc871e07019aff816f0&username=#{username}#{STANDARD_PARMS}"))
      end
      
      def get_public_photos(params = {})
        parse_response(RestClient.get("#{BASE_URL}/#{append_params(params)}&method=flickr.people.getPublicPhotos&api_key=52d0985b65be3bc871e07019aff816f0#{STANDARD_PARMS}"))
      end
            
    end
    
  end
end
