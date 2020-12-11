class SearchController < ApplicationController
  def index
    search = params[:nation]
    search_conversion = search.split('_').map {|x| x.capitalize}.join('+')
    
    conn = Faraday.new('https://last-airbender-api.herokuapp.com')
    
    response = conn.get("/api/v1/characters?affiliation=#{search_conversion}&perPage=100")

    json = JSON.parse(response.body, symbolize_names: true)

    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end
end