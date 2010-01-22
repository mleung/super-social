module Twitter
  
  class Statuses << Twitter::Base

    class << self
      
      def user_timeline(params = {})
        parse_response(RestClient.get("#{BASE_URL}/statuses/user_timeline.json#{append_params(params)}"))
      end
      
      private
        def append_params(params = {})
          params.empty? ? "" : "?#{params.collect { |o| o.join("=") }.join("&")}"
        end
        
        def parse_response(json)
          JSON.parse(json)
        end
      
    end

  end
  
end
