require "httparty"
require "json"
module Services
  class Users
    include HTTParty

    base_uri "https://keepable-api.herokuapp.com"

    def self.signup(credentials)
      options = {
        headers: { "Content-Type": "application/json" },
        body: credentials.to_json
      }
      response = post("/signup", options)

      raise HTTParty::ResponseError, response unless response.success?

      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
