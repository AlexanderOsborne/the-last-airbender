class SearchController < ApplicationController
  def index
    arg = params["nation"]
    require 'pry'; binding.pry
    by_nation(arg)
    # require 'pry'; binding.pry
  end
end