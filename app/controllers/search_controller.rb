class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.characters(params["affliation"])
  end
end