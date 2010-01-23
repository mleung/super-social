module Flickr
  
  class People < Flickr::Base
    extend SuperSocial::Web

    class << self
      
      def find_by_username(username)
        parse_response(RestClient.get("#{BASE_URL}/?method=flickr.people.findByUserName&api_key=52d0985b65be3bc871e07019aff816f0&username=#{username}&format=json"))
      end
      
      def get_photos_of(params = {})
        parse_response(RestClient.get("#{BASE_URL}/#{append_params(params)}&method=flickr.people.getPhotosOf&api_key=52d0985b65be3bc871e07019aff816f0&format=json"))
      end
      
    end
    
  end
end
