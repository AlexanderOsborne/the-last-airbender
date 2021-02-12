class Character
  attr_reader :allies, :enemies, :photoUrl, :name, :affliation


  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
    @name = data[:name]
    @affliation = data[:affliation]
end