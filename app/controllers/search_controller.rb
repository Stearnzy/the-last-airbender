class SearchController < ApplicationController
  def index
    @members = SearchFacade.members(params[:nation])
  end
end