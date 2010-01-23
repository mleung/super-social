module SuperSocial
  module Web
    def append_params(params = {})
      params.empty? ? "" : "?#{params.collect { |o| o.join("=") }.join("&")}"
    end

    def parse_response(json)
      JSON.parse(json)
    end
  end
end