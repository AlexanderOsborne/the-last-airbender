class SearchFacade
  class << self
  
    def characters(arg)
      data = AvatarService.by_nation(arg)
      # require 'pry'; binding.pry
      data.map do |character|
        Character.new(character)
      end
    end
  end
end