class SearchFacade
  def self.members(nation)
    conn = Faraday.new('https://last-airbender-api.herokuapp.com')
    
    response = conn.get("/api/v1/characters?affiliation=#{search_conversion(nation)}&perPage=100")

    json = JSON.parse(response.body, symbolize_names: true)

    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end

  private

  def self.search_conversion(nation)
    nation.split('_').map {|x| x.capitalize}.join('+')
  end
end