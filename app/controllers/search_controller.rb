class SearchController < ApplicationController
  def index
    # require 'pry'; binding.pry
    @characters = SearchFacade.characters(params["nation"])
  end
end