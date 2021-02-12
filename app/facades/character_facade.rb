class CharacterFacade
  class << self
  
  def characters
    require 'pry'; binding.pry
    data = AvatarService.by_nation[:affiliation]
    data.map do |character|
      Character.new(character)
    end
  end
end