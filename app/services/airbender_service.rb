class AirbenderService
  def self.characters(nation)
    response = conn.get("/api/v1/characters?affiliation=#{SearchFacade.search_conversion(nation)}&perPage=100")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end
end
