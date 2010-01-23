module Vimeo
  
  class User < Vimeo::Base
    extend SuperSocial::Web

    class << self
      
      def clips(username)
        parse_response(RestClient.get(("#{BASE_URL}/#{username}/clips.json")))
      end
      
    end
    
  end
end
