require "digest"

module LastFM
  
  class Base
    
    class << self
      BASE_URL = "http://ws.audioscrobbler.com/2.0"
      # Temporary until we have a way to read configs
      KEY =  "9301cc642caf25fd8f2e4193061846f8"
      SECRET = "583eca1a006215dd211643f97337b096"
      
      def get_signature(method, params)
        signature = []
        signature << "api_key#{KEY}method#{method}"
        params.each_pair { |key, value| signature << key.to_s + value }
        signature = "#{signature.sort.join}#{SECRET}"
        Digest::MD5.hexdigest(signature)
      end
   
    end
    
  end
  
end