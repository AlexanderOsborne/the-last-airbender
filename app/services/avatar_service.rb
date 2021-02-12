class AvatarService
  class << self

    def by_nation(arg)
      require 'pry'; binding.pry
      response = faraday.get("/api/v1/characters?affiliation=#{arg}")
      parse(response)
    end
      
    private

    def parse(arg)
      JSON.parse(arg.body, symbolize_names: true)
    end

    def faraday
      Faraday.new('https://last-airbender-api.herokuapp.com')
    end
  end
end