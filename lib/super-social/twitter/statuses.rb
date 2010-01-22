module Twitter
  
  class Statuses << Twitter::Base

    class << self
      
      def user_timeline(params = {})
        parse_response(RestClient.get("#{BASE_URL}/statuses/user_timeline.json#{append_params(params)}"))
      end
      
      private
        def append_params(params)
          return if params.empty?
          out = "?"
          params.each_with_index do |item,index|
            out << "#{item.first}=#{item.last}"
            out << "&" unless index == params.size
          end
          out
        end
        
        def parse_response(json)
          JSON.parse(json)
        end
      
    end

  end
  
end