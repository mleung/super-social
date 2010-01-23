module Twitter
  
  class Statuses < Twitter::Base

    class << self
      include SuperSocial::Web
      
      def user_timeline(params = {})
        parse_response(RestClient.get("#{BASE_URL}/statuses/user_timeline.json#{append_params(params)}"))
      end
      
    end

  end
  
end
