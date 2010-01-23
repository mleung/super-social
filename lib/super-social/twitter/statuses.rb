module Twitter
  
  class Statuses < Twitter::Base
    extend SuperSocial::Web

    class << self
      
      def user_timeline(params = {})
        parse_response(RestClient.get("#{BASE_URL}/statuses/user_timeline.json#{append_params(params)}"))
      end
      
    end

  end
  
end
