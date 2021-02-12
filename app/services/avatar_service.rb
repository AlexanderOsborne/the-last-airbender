class AvatarService
  class << self

  def by_nation(arg)
    response = faraday.get("/api/v1/characters?affiliation=${Nation+Name}") do |req|
      req.params['affiliation'] = arg
  end
    
  private
  
  def parse(arg)
    JSON.parse(arg.body, symbolize_names: true)
  end

  def faraday
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end
end