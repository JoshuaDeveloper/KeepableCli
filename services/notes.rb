require "httparty"
require "json"
module Services
  class Notes
    include HTTParty

    base_uri "https://keepable-api.herokuapp.com"

    def self.index_notes(token)
      options = {
        headers: { Authorization: "Token token=#{token}" }
      }
      response = get("/notes", options)

      raise HTTParty::ResponseError, response unless response.success?

      JSON.parse(response.body, symbolize_names: true)
    end

    def self.create_note(token, note_data)
      options = {
        headers: {
          Authorization: "Token token=#{token}",
          "Content-Type": "application/json"
        },
        body: note_data.to_json
      }
      response = post("/notes", options)

      raise HTTParty::ResponseError, response unless response.success?

      JSON.parse(response.body, symbolize_names: true)
    end

    def self.update_note(token, note_data, id)
      options = {
        headers: {
          Authorization: "Token token=#{token}",
          "Content-Type": "application/json"
        },
        body: note_data.to_json
      }
      response = patch("/notes/#{id}", options)

      raise HTTParty::ResponseError, response unless response.success?

      JSON.parse(response.body, symbolize_names: true)
    end

    def self.delete_note(token, id)
      options = {
        headers: {
          Authorization: "Token token=#{token}"
        }
      }
      response = delete("/notes/#{id}", options)

      raise HTTParty::ResponseError, response unless response.success?

      JSON.parse(response.body, symbolize_names: true) if response.body
    end
  end
end
