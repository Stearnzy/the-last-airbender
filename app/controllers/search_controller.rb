class SearchController < ApplicationController
  def index
    search = params[:nation]

    conn = Faraday.new('https://last-airbender-api.herokuapp.com')

    response = conn.get("/api/v1/characters?affiliation=Fire+Nation&perPage=100")

    json = JSON.parse(response.body, symbolize_names: true)

    @members = json

    require 'pry'; binding.pry
  end
end