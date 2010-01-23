module Vimeo
  
  class User < Vimeo::Base

    class << self
      include SuperSocial::Web
      
      def videos(username)
        parse_response(RestClient.get(("#{BASE_URL}/#{username}/videos.json")))
      end
      
    end
    
  end
end
