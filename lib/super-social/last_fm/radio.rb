module LastFM
  
  class Radio < LastFM::Base
    extend SuperSocial::Web
    
    class << self
      def tune(params = {})
        raise 'Token required' if params[:token].nil?
        signature = get_signature('radio.tune', :api_key => KEY,:token => params[:token] ) 
        parse_response(RestClient.get(("#{BASE_URL}/#{append_params(params)}&method=radio.tune&format=json&api_key=#{KEY}&api_sig=#{signature}")))
      end
    end
    
  end
end