class Pokemon::API

    @@all = []

    def self.get_name(id)  
        url = "https://pokeapi.co/api/v2/pokemon/#{id}"
        pokemon = HTTParty.get(url)
        name = pokemon["species"].fetch("name")
    end

end


