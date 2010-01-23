module Vimeo
  
  class User < Vimeo::Base

    class << self
      include SuperSocial::Web
      
      def clips(username)
        parse_response(RestClient.get(("#{BASE_URL}/#{username}/clips.json")))
      end
      
    end
    
  end
end
