#get the data from uri, kinda like controller --> creating objects

class API
    def self.pick_stations
        url = "http://api.citybik.es/v2/networks/citi-bike-nyc"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        array_of_stations = hash["network"]["stations"]   


        array_of_stations.each do |station_hash|    
            #initialize a new station
            #assign attributes to it
            bikes_instance = Bikes.new

            bikes_instance.empty_slots = station_hash["empty_slots"]
            bikes_instance.free_bikes = station_hash["free_bikes"]
            bikes_instance.name = station_hash["name"]
        end
        binding.pry
    end
end
